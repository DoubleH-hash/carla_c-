;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::VehicleCMD)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'VehicleCMD (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::VEHICLECMD")
  (make-package "YS_ROS_MSGS::VEHICLECMD"))

(in-package "ROS")
;;//! \htmlinclude VehicleCMD.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ys_ros_msgs::VehicleCMD
  :super ros::object
  :slots (_header _timestamp _steerAngle _vehicleSpeed _acceleration _steerAngle_speed _gear _controlStatus _enable_acceleration ))

(defmethod ys_ros_msgs::VehicleCMD
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:steerAngle __steerAngle) 0.0)
    ((:vehicleSpeed __vehicleSpeed) 0.0)
    ((:acceleration __acceleration) 0.0)
    ((:steerAngle_speed __steerAngle_speed) 0)
    ((:gear __gear) 0)
    ((:controlStatus __controlStatus) 0)
    ((:enable_acceleration __enable_acceleration) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _timestamp __timestamp)
   (setq _steerAngle (float __steerAngle))
   (setq _vehicleSpeed (float __vehicleSpeed))
   (setq _acceleration (float __acceleration))
   (setq _steerAngle_speed (round __steerAngle_speed))
   (setq _gear (round __gear))
   (setq _controlStatus (round __controlStatus))
   (setq _enable_acceleration (round __enable_acceleration))
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
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:steerAngle_speed
   (&optional __steerAngle_speed)
   (if __steerAngle_speed (setq _steerAngle_speed __steerAngle_speed)) _steerAngle_speed)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:controlStatus
   (&optional __controlStatus)
   (if __controlStatus (setq _controlStatus __controlStatus)) _controlStatus)
  (:enable_acceleration
   (&optional __enable_acceleration)
   (if __enable_acceleration (setq _enable_acceleration __enable_acceleration)) _enable_acceleration)
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
    ;; float64 _acceleration
    8
    ;; uint16 _steerAngle_speed
    2
    ;; int8 _gear
    1
    ;; int8 _controlStatus
    1
    ;; uint8 _enable_acceleration
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
     ;; float64 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _steerAngle_speed
       (write-word _steerAngle_speed s)
     ;; int8 _gear
       (write-byte _gear s)
     ;; int8 _controlStatus
       (write-byte _controlStatus s)
     ;; uint8 _enable_acceleration
       (write-byte _enable_acceleration s)
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
   ;; float64 _acceleration
     (setq _acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _steerAngle_speed
     (setq _steerAngle_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gear 127) (setq _gear (- _gear 256)))
   ;; int8 _controlStatus
     (setq _controlStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _controlStatus 127) (setq _controlStatus (- _controlStatus 256)))
   ;; uint8 _enable_acceleration
     (setq _enable_acceleration (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ys_ros_msgs::VehicleCMD :md5sum-) "9029582b3d2c81df872873daf779f6b8")
(setf (get ys_ros_msgs::VehicleCMD :datatype-) "ys_ros_msgs/VehicleCMD")
(setf (get ys_ros_msgs::VehicleCMD :definition-)
      "Header header
time timestamp
float64 steerAngle
float64 vehicleSpeed
float64 acceleration
uint16 steerAngle_speed
int8 gear
int8 controlStatus    #force_stop:0, stop：1, forward：2, back：3, idle：4

uint8 enable_acceleration #是否使用CMD的加速度。0不用， 1用



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



(provide :ys_ros_msgs/VehicleCMD "9029582b3d2c81df872873daf779f6b8")


