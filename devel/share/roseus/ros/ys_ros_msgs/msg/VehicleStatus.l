;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::VehicleStatus)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'VehicleStatus (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::VEHICLESTATUS")
  (make-package "YS_ROS_MSGS::VEHICLESTATUS"))

(in-package "ROS")
;;//! \htmlinclude VehicleStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ys_ros_msgs::VehicleStatus
  :super ros::object
  :slots (_header _timestamp _steerAngle _vehicleSpeed _vehicleAcceleration _gear _controlStatus ))

(defmethod ys_ros_msgs::VehicleStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:steerAngle __steerAngle) 0.0)
    ((:vehicleSpeed __vehicleSpeed) 0.0)
    ((:vehicleAcceleration __vehicleAcceleration) 0.0)
    ((:gear __gear) 0)
    ((:controlStatus __controlStatus) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _timestamp __timestamp)
   (setq _steerAngle (float __steerAngle))
   (setq _vehicleSpeed (float __vehicleSpeed))
   (setq _vehicleAcceleration (float __vehicleAcceleration))
   (setq _gear (round __gear))
   (setq _controlStatus (round __controlStatus))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:steerAngle
   (&optional __steerAngle)
   (if __steerAngle (setq _steerAngle __steerAngle)) _steerAngle)
  (:vehicleSpeed
   (&optional __vehicleSpeed)
   (if __vehicleSpeed (setq _vehicleSpeed __vehicleSpeed)) _vehicleSpeed)
  (:vehicleAcceleration
   (&optional __vehicleAcceleration)
   (if __vehicleAcceleration (setq _vehicleAcceleration __vehicleAcceleration)) _vehicleAcceleration)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:controlStatus
   (&optional __controlStatus)
   (if __controlStatus (setq _controlStatus __controlStatus)) _controlStatus)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _timestamp
    8
    ;; float64 _steerAngle
    8
    ;; float64 _vehicleSpeed
    8
    ;; float64 _vehicleAcceleration
    8
    ;; int8 _gear
    1
    ;; int8 _controlStatus
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; float64 _steerAngle
       (sys::poke _steerAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vehicleSpeed
       (sys::poke _vehicleSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vehicleAcceleration
       (sys::poke _vehicleAcceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _gear
       (write-byte _gear s)
     ;; int8 _controlStatus
       (write-byte _controlStatus s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _steerAngle
     (setq _steerAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vehicleSpeed
     (setq _vehicleSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vehicleAcceleration
     (setq _vehicleAcceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gear 127) (setq _gear (- _gear 256)))
   ;; int8 _controlStatus
     (setq _controlStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _controlStatus 127) (setq _controlStatus (- _controlStatus 256)))
   ;;
   self)
  )

(setf (get ys_ros_msgs::VehicleStatus :md5sum-) "9f8661bcfb5159cd801073982e804559")
(setf (get ys_ros_msgs::VehicleStatus :datatype-) "ys_ros_msgs/VehicleStatus")
(setf (get ys_ros_msgs::VehicleStatus :definition-)
      "Header header
time timestamp
float64 steerAngle # deg 左负右正
float64 vehicleSpeed # km/h
float64 vehicleAcceleration # m/s^2
int8 gear                   # P=1 R=2 N=3 D=4
int8 controlStatus          # force_stop = 0, stop = 1, forward = 2, back = 3, idle = 4
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :ys_ros_msgs/VehicleStatus "9f8661bcfb5159cd801073982e804559")


