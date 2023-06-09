# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ys_ros_msgs: 18 messages, 3 services")

set(MSG_I_FLAGS "-Iys_ros_msgs:/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ys_ros_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovarianceStamped:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseWithCovariance"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetectionArray.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetectionArray.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovarianceStamped:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseWithCovariance:ys_ros_msgs/AprilTagDetection"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/CarToServer.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/CarToServer.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg" "std_msgs/Header:ys_ros_msgs/PointXYA"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg" "geometry_msgs/Point32"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetectionArray.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetectionArray.msg" "std_msgs/Header:geometry_msgs/Point32:ys_ros_msgs/LaneDetection"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LanePlan.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LanePlan.msg" "std_msgs/Header:ys_ros_msgs/PointXYA"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Location.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Location.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Map.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Map.msg" "ys_ros_msgs/Lane:ys_ros_msgs/PointXYA:std_msgs/Header"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleCMD.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleCMD.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleFeed.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleFeed.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleLight.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleLight.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleStatus.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Velocity.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Velocity.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetectionArray.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetectionArray.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point:ys_ros_msgs/VisionDetection"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/vehicle_info.msg" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/vehicle_info.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/getLaneById.srv" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/getLaneById.srv" "ys_ros_msgs/Lane:ys_ros_msgs/PointXYA:std_msgs/Header"
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/laneFinish.srv" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/laneFinish.srv" ""
)

get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/switchLane.srv" NAME_WE)
add_custom_target(_ys_ros_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ys_ros_msgs" "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/switchLane.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/CarToServer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LanePlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Map.msg"
  "${MSG_I_FLAGS}"
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleCMD.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleFeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleLight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/vehicle_info.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)

### Generating Services
_generate_srv_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/getLaneById.srv"
  "${MSG_I_FLAGS}"
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_srv_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/laneFinish.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)
_generate_srv_cpp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/switchLane.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
)

### Generating Module File
_generate_module_cpp(ys_ros_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ys_ros_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ys_ros_msgs_generate_messages ys_ros_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetectionArray.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/CarToServer.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetectionArray.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LanePlan.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Location.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Map.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleCMD.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleFeed.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleLight.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleStatus.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetectionArray.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/vehicle_info.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/getLaneById.srv" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/laneFinish.srv" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/switchLane.srv" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_cpp _ys_ros_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ys_ros_msgs_gencpp)
add_dependencies(ys_ros_msgs_gencpp ys_ros_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ys_ros_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/CarToServer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LanePlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Map.msg"
  "${MSG_I_FLAGS}"
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleCMD.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleFeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleLight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/vehicle_info.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)

### Generating Services
_generate_srv_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/getLaneById.srv"
  "${MSG_I_FLAGS}"
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_srv_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/laneFinish.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)
_generate_srv_eus(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/switchLane.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
)

### Generating Module File
_generate_module_eus(ys_ros_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ys_ros_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ys_ros_msgs_generate_messages ys_ros_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetectionArray.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/CarToServer.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetectionArray.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LanePlan.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Location.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Map.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleCMD.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleFeed.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleLight.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleStatus.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetectionArray.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/vehicle_info.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/getLaneById.srv" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/laneFinish.srv" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/switchLane.srv" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_eus _ys_ros_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ys_ros_msgs_geneus)
add_dependencies(ys_ros_msgs_geneus ys_ros_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ys_ros_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/CarToServer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LanePlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Map.msg"
  "${MSG_I_FLAGS}"
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleCMD.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleFeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleLight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/vehicle_info.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)

### Generating Services
_generate_srv_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/getLaneById.srv"
  "${MSG_I_FLAGS}"
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_srv_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/laneFinish.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)
_generate_srv_lisp(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/switchLane.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
)

### Generating Module File
_generate_module_lisp(ys_ros_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ys_ros_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ys_ros_msgs_generate_messages ys_ros_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetectionArray.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/CarToServer.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetectionArray.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LanePlan.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Location.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Map.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleCMD.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleFeed.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleLight.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleStatus.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetectionArray.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/vehicle_info.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/getLaneById.srv" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/laneFinish.srv" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/switchLane.srv" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_lisp _ys_ros_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ys_ros_msgs_genlisp)
add_dependencies(ys_ros_msgs_genlisp ys_ros_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ys_ros_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/CarToServer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LanePlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Map.msg"
  "${MSG_I_FLAGS}"
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleCMD.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleFeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleLight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/vehicle_info.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)

### Generating Services
_generate_srv_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/getLaneById.srv"
  "${MSG_I_FLAGS}"
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_srv_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/laneFinish.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)
_generate_srv_nodejs(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/switchLane.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
)

### Generating Module File
_generate_module_nodejs(ys_ros_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ys_ros_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ys_ros_msgs_generate_messages ys_ros_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetectionArray.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/CarToServer.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetectionArray.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LanePlan.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Location.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Map.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleCMD.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleFeed.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleLight.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleStatus.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetectionArray.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/vehicle_info.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/getLaneById.srv" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/laneFinish.srv" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/switchLane.srv" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_nodejs _ys_ros_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ys_ros_msgs_gennodejs)
add_dependencies(ys_ros_msgs_gennodejs ys_ros_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ys_ros_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/CarToServer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LanePlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Map.msg"
  "${MSG_I_FLAGS}"
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleCMD.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleFeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleLight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_msg_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/vehicle_info.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)

### Generating Services
_generate_srv_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/getLaneById.srv"
  "${MSG_I_FLAGS}"
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg;/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_srv_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/laneFinish.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)
_generate_srv_py(ys_ros_msgs
  "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/switchLane.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
)

### Generating Module File
_generate_module_py(ys_ros_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ys_ros_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ys_ros_msgs_generate_messages ys_ros_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetection.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/AprilTagDetectionArray.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/CarToServer.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Lane.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetection.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LaneDetectionArray.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/LanePlan.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Location.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Map.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/PointXYA.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleCMD.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleFeed.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleLight.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VehicleStatus.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/Velocity.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetection.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/VisionDetectionArray.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/msg/vehicle_info.msg" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/getLaneById.srv" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/laneFinish.srv" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/omen/ros-carla/my-carla-ros-project/src/ys_ros_msgs/srv/switchLane.srv" NAME_WE)
add_dependencies(ys_ros_msgs_generate_messages_py _ys_ros_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ys_ros_msgs_genpy)
add_dependencies(ys_ros_msgs_genpy ys_ros_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ys_ros_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ys_ros_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ys_ros_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ys_ros_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ys_ros_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ys_ros_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ys_ros_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ys_ros_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ys_ros_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ys_ros_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ys_ros_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ys_ros_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ys_ros_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ys_ros_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ys_ros_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ys_ros_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
