#include <ros/ros.h>
#include <std_msgs/Header.h>
#include <nav_msgs/Odometry.h>
#include <iostream>
#include <string>
#include <sstream>
#include <memory>
#include <std_msgs/String.h>
#include <carla_msgs/CarlaEgoVehicleControl.h>
#include <carla_msgs/CarlaEgoVehicleStatus.h>
#include <tf2/convert.h>
#include <tf/transform_broadcaster.h>

#include "ys_ros_msgs/VehicleCMD.h"
#include "ys_ros_msgs/Location.h"
#include "ys_ros_msgs/VehicleStatus.h"

#include <sensor_msgs/Imu.h>
#include <sensor_msgs/NavSatFix.h>

using namespace std;
ros::Publisher location_pub;

double gaussX, gaussY;
double ins_longtitude,ins_latitude,ins_altitude;
float ins_pitch,ins_roll,ins_yaw;
float acc_x,acc_y,acc_z;
float gyro_x,gyro_y,gyro_z;

unsigned char pub_flag_gnss = 0;
unsigned char pub_flag_odm = 0;

struct Quaternion {
    double w, x, y, z;
};
 
struct EulerAngles {
    double roll, pitch, yaw;
};
 
EulerAngles ToEulerAngles(Quaternion q) {
    EulerAngles angles;
 
    // roll (x-axis rotation)
    double sinr_cosp = 2 * (q.w * q.x + q.y * q.z);
    double cosr_cosp = 1 - 2 * (q.x * q.x + q.y * q.y);
    angles.roll = std::atan2(sinr_cosp, cosr_cosp);
 
    // pitch (y-axis rotation)
    double sinp = 2 * (q.w * q.y - q.z * q.x);
    if (std::abs(sinp) >= 1)
        angles.pitch = std::copysign(M_PI / 2, sinp); 
    else
        angles.pitch = std::asin(sinp);
 
    // yaw (z-axis rotation)
    double siny_cosp = 2 * (q.w * q.z + q.x * q.y);
    double cosy_cosp = 1 - 2 * (q.y * q.y + q.z * q.z);
    angles.yaw = std::atan2(siny_cosp, cosy_cosp);
 
    return angles;
}

void PubilshLocation()
{
    ys_ros_msgs::Location loc;
    loc.header.frame_id = "location";
    loc.header.stamp = ros::Time::now();
    
    loc.gau_pos[0] = gaussX;
    loc.gau_pos[1] = gaussY;

    loc.wgs84_pos[0] = ins_longtitude;
    loc.wgs84_pos[1] = ins_latitude;
    loc.wgs84_pos[2] = ins_altitude;

    loc.orientation[0] = ins_pitch;  // bestpos.pitch;
    loc.orientation[1] = ins_roll;   // bestpos.roll;
    loc.orientation[2] = ins_yaw;

    // loc.speed[0] = ins_northspd;      // bestpos.east_velocity;
    // loc.speed[1] = ins_eastspd;     // bestpos.north_velocity;
    // loc.speed[2] = ins_togroundspd;  // bestpos.up_velocity;
    
    //线速度和角速度用不上
    loc.accelerate[0] = acc_x;
    loc.accelerate[1] = acc_y;
    loc.accelerate[2] = acc_z;

    loc.gyro[0] = gyro_x;
    loc.gyro[1] = gyro_y;
    loc.gyro[2] = gyro_z;

    // loc.ins_std_error[0] = ins_std_lat;
    // loc.ins_std_error[1] = ins_std_lon;
    // loc.ins_std_error[2] = ins_std_alt;
    // loc.ins_std_error[3] = ins_std_heading;

    // loc.ins_data_info[0] = ins_numsv; //satellite nums
    // loc.ins_data_info[1] = ins_gps_age; //gps delay(s)
    // loc.ins_data_info[2] = ins_car_status; //wheel speed(0/1)

    loc.INS_status = "48_L1_INT_L1";   //固定解

    location_pub.publish(loc);
}

void gnssCallback(const sensor_msgs::NavSatFix::ConstPtr &p)
{
   ins_latitude = p->latitude;
   ins_longtitude = p->longitude;
   ins_altitude = p->altitude;

   printf("[gnssCallback]:latitude:%f longtitude:%f altitude:%f\n", ins_latitude, ins_longtitude, ins_altitude);
   pub_flag_gnss = 1;
}

void odometryCallback(const nav_msgs::Odometry::ConstPtr &p)
{
    Quaternion rotation;
    EulerAngles eulerAng;
    //需要将四轴加速度解算为欧拉角
    rotation.x = p->pose.pose.orientation.x;
    rotation.y = p->pose.pose.orientation.y;
    rotation.z = p->pose.pose.orientation.z;
    rotation.w = p->pose.pose.orientation.w;

    eulerAng = ToEulerAngles(rotation);

    ins_pitch = eulerAng.pitch;
    ins_roll = eulerAng.roll;
    ins_yaw = eulerAng.yaw;

    gaussX = p->pose.pose.position.x;
    gaussY = p->pose.pose.position.y;

    printf("[odometryCallback]gaussX:%0.2f gaussY:%0.2f,orientation:{%0.4f %0.4f %0.4f %0.4f},ins_pitch:%0.2f ins_roll:%0.2f ins_yaw:%0.2f \n", 
                                                                        gaussX, gaussY,rotation.x, rotation.y, rotation.z, rotation.w, ins_pitch, ins_roll, ins_yaw);
    pub_flag_odm ++;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "ys_carla_location");
    ros::NodeHandle nh;
   
   //订阅GPS信息 并转发
   ros::Subscriber gnss_sub = nh.subscribe("/carla/ego_vehicle/gnss", 20, gnssCallback);
   //订阅姿态等信息
    ros::Subscriber odometry_sub = nh.subscribe("/carla/ego_vehicle/odometry", 20, odometryCallback);

   location_pub = nh.advertise<ys_ros_msgs::Location>("/ys_ros_msgs/Location", 10);


    ros::Rate loop_rate(20);

    while (ros::ok())
    {
        if(pub_flag_odm && pub_flag_gnss){

            PubilshLocation();
            pub_flag_odm = 0;
            pub_flag_gnss = 0;
        }
    
        ros::spinOnce();
        loop_rate.sleep();
    }
    ros::spin();

    return 0;
}
