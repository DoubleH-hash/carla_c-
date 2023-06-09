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

using namespace std;
ros::Publisher control_pub;

void PubilshControl(float throttle, float angle, float brake, int32_t gear)
{

}

void controlCallback(const ys_ros_msgs::VehicleCMD::ConstPtr &p)
{
    
}

void statusCallback(const carla_msgs::CarlaEgoVehicleStatus::ConstPtr &status)
{
  
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "ys_carla_location");
    ros::NodeHandle nh;
   


    ros::Rate loop_rate(20);

    while (ros::ok())
    {

    

        ros::spinOnce();
        loop_rate.sleep();
    }
    ros::spin();

    return 0;
}
