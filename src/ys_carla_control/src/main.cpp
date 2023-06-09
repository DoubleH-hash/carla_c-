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

#include <carla_msgs/SpawnObject.h>
#include <carla_msgs/SpawnObjectRequest.h>
#include <carla_msgs/SpawnObjectResponse.h>

#include <tf2/convert.h>
#include <tf/transform_broadcaster.h>

#include "ys_ros_msgs/VehicleCMD.h"
#include "ys_ros_msgs/Location.h"
#include "ys_ros_msgs/VehicleStatus.h"


using namespace std;
ros::Publisher control_pub;
ros::Publisher initial_pub;

double vspeed = 3.0;   //km/h
double vangular = 0;   //左转为负值  右转为正值

double vspeedfb = 0.0;
double pid_throttle_delta = 0.0;

double throttle_pid = 0.0;

struct
{
    double error;      // 偏差
    double error_next; // 上一个偏差
    double error_last; // 上上一个偏差
    double kp, ki, kd; // 定义比例，积分，微分参数

} pid;

void PubilshControl(float throttle, float angle, float brake, int32_t gear)
{
    carla_msgs::CarlaEgoVehicleControl command;

    command.header.stamp = ros::Time::now();

    command.header.frame_id = "control";

    command.throttle = throttle;
    // 角度 -0.7～0.7
    if(angle > 40) angle = 40;
    if(angle < -40) angle = -40;
    command.steer = angle/180.0;
    // 刹车
    command.brake = brake;
    // 档位
    command.gear = gear;

    control_pub.publish(command);
}

void PubilshInitial()
{
    geometry_msgs::Pose pose;

    pose.orientation.x = 0.0;
    pose.orientation.y = 0.0;
    pose.orientation.z = -0.005207524779596642;
    pose.orientation.w = 0.9999864407509084;

    pose.position.x = -13.339421272277832;
    pose.position.y = 61.05009078979492;
    pose.position.z = 0.0013123702956363559;

    pose.position.z += 2;    //使车辆悬空

    initial_pub.publish(pose);
}

void PID_init()
{
    pid.error = 0;
    pid.error_last = 0;
    pid.error_next = 0;
    pid.kp = 1.0;
    pid.ki = 0.1;
    pid.kd = 0.1;
}

float PID_Calculation(float set_num, float now_num)
{
    float increment_speed; // 增量
    pid.error = set_num - now_num;

    increment_speed = pid.kp * (pid.error - pid.error_next) + pid.ki * pid.error + pid.kd * (pid.error - 2 * pid.error_next + pid.error_last); // 增量计算公式

    pid.error_last = pid.error_next; // 下一次迭代
    pid.error_next = pid.error;
    return increment_speed;
}

void controlCallback(const ys_ros_msgs::VehicleCMD::ConstPtr &p)
{
    vspeed = p->vehicleSpeed;  //km/h
    vangular = p->steerAngle;

    printf("[ys_control] controlCallback --- vspeed:%f,vangular:%f\n", vspeed, vangular);
}

void statusCallback(const carla_msgs::CarlaEgoVehicleStatus::ConstPtr &status)
{
    vspeedfb = 3.6 * status->velocity;   //velocity为 m/s 需要转换为km/h

    pid_throttle_delta = PID_Calculation(vspeed, vspeedfb);
    throttle_pid += pid_throttle_delta;
    //油门最小值为 0
    if(pid_throttle_delta < 0) throttle_pid = 0;
    if(throttle_pid > 1) throttle_pid = 1;

    printf("[ys_control] statusCallback ---vspeed:%f,vspeedfb:%f,throttle_pid:%f,pid_throttle_delta:%f \n",
           vspeed, vspeedfb, throttle_pid, pid_throttle_delta);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "ys_carla_control");
    ros::NodeHandle nh;
    ros::Subscriber control_sub = nh.subscribe("cmd_vel", 20, controlCallback);

    ros::Subscriber status_sub = nh.subscribe("/carla/ego_vehicle/vehicle_status", 20, statusCallback); // 订阅carla的车速等反馈信息

    control_pub = nh.advertise<carla_msgs::CarlaEgoVehicleControl>("/carla/ego_vehicle/vehicle_control_cmd", 10);  //发布carla的控制信息

    initial_pub = nh.advertise<geometry_msgs::Pose>("/carla/ego_vehicle/control/set_transform", 10);  //发布carla中小车的初始位置

    PID_init();

    ros::Rate loop_rate(20);

    ros::Duration(1).sleep();

    for(int i = 0; i < 5; i++){
        PubilshInitial();
    }

    ros::Duration(1).sleep();

    while (ros::ok())
    {

        PubilshControl(throttle_pid, vangular, 0, 1);


        ros::spinOnce();
        loop_rate.sleep();
    }
    ros::spin();

    return 0;
}
