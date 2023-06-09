# Install script for directory: /home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/omen/ros-carla/my-carla-ros-project/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ys_ros_msgs/msg" TYPE FILE FILES
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetectionArray.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/CarToServer.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetectionArray.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LanePlan.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Location.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Map.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleCMD.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleFeed.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleLight.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleStatus.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Velocity.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetectionArray.msg"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/vehicle_info.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ys_ros_msgs/srv" TYPE FILE FILES
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/getLaneById.srv"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/laneFinish.srv"
    "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/switchLane.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ys_ros_msgs/cmake" TYPE FILE FILES "/home/omen/ros-carla/my-carla-ros-project/build/ys_ros_msgs/catkin_generated/installspace/ys_ros_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/omen/ros-carla/my-carla-ros-project/devel/include/ys_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/omen/ros-carla/my-carla-ros-project/devel/share/roseus/ros/ys_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/omen/ros-carla/my-carla-ros-project/devel/share/common-lisp/ros/ys_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/omen/ros-carla/my-carla-ros-project/devel/share/gennodejs/ros/ys_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/omen/ros-carla/my-carla-ros-project/devel/lib/python3/dist-packages/ys_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/omen/ros-carla/my-carla-ros-project/devel/lib/python3/dist-packages/ys_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/omen/ros-carla/my-carla-ros-project/build/ys_ros_msgs/catkin_generated/installspace/ys_ros_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ys_ros_msgs/cmake" TYPE FILE FILES "/home/omen/ros-carla/my-carla-ros-project/build/ys_ros_msgs/catkin_generated/installspace/ys_ros_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ys_ros_msgs/cmake" TYPE FILE FILES
    "/home/omen/ros-carla/my-carla-ros-project/build/ys_ros_msgs/catkin_generated/installspace/ys_ros_msgsConfig.cmake"
    "/home/omen/ros-carla/my-carla-ros-project/build/ys_ros_msgs/catkin_generated/installspace/ys_ros_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ys_ros_msgs" TYPE FILE FILES "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/package.xml")
endif()

