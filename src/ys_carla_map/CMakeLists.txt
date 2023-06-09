cmake_minimum_required(VERSION 2.8.3)
project(ys_carla_map)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  carla_msgs
  roscpp
  sensor_msgs
  std_msgs
  nav_msgs
  tf
  tf2
  ys_ros_msgs
)


catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES ys_control
#  CATKIN_DEPENDS carla_msgs roscpp sensor_msgs std_msgs
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(ys_carla_map src/main.cpp)
target_link_libraries(ys_carla_map ${catkin_LIBRARIES})