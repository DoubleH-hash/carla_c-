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

#include<pcl/point_cloud.h>
#include<pcl_conversions/pcl_conversions.h>
#include<sensor_msgs/PointCloud2.h>
#include<pcl/io/pcd_io.h>

/*
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
*/

void 
cloudCB(const sensor_msgs::PointCloud2 &input)
{
  pcl::PointCloud<pcl::PointXYZ> cloud;
  pcl::fromROSMsg(input, cloud);//将PointCloud2转为PointXYZ
  pcl::io::savePCDFileASCII 
                ("/home/omen/mytest.pcd", cloud);    //保存pcd
}

int main (int argc, char **argv)
{
  ros::init (argc, argv, "pcl_write");   
  ros::NodeHandle nh;
  ros::Subscriber bat_sub = nh.subscribe("/carla/ego_vehicle/lidar", 20, cloudCB);//接收点云
  ros::spin();
  return 0;
}