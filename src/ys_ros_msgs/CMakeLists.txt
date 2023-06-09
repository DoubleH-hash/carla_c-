cmake_minimum_required(VERSION 3.0.2)
project(ys_ros_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  std_msgs
  geometry_msgs
)

file(GLOB MSG_FILE RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}/msg "msg/*.msg")
file(GLOB SRV_FILE RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}/srv "srv/*.srv")
message(STATUS "-------------------------------${MSG_FILE}")
add_message_files(
  DIRECTORY msg
  FILES ${MSG_FILE}
)

add_service_files(
  FILES
  ${SRV_FILE}
)

generate_messages(DEPENDENCIES std_msgs geometry_msgs)

catkin_package(
  CATKIN_DEPENDS
  message_runtime
  std_msgs
  geometry_msgs
)