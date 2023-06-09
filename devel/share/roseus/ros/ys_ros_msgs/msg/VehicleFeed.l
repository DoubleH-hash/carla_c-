;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::VehicleFeed)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'VehicleFeed (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::VEHICLEFEED")
  (make-package "YS_ROS_MSGS::VEHICLEFEED"))

(in-package "ROS")
;;//! \htmlinclude VehicleFeed.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ys_ros_msgs::VehicleFeed
  :super ros::object
  :slots (_header _timestamp _LFspd _LBspd _RFspd _RBspd _gear _speed _steerAng ))

(defmethod ys_ros_msgs::VehicleFeed
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:LFspd __LFspd) 0.0)
    ((:LBspd __LBspd) 0.0)
    ((:RFspd __RFspd) 0.0)
    ((:RBspd __RBspd) 0.0)
    ((:gear __gear) 0)
    ((:speed __speed) 0.0)
    ((:steerAng __steerAng) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _timestamp __timestamp)
   (setq _LFspd (float __LFspd))
   (setq _LBspd (float __LBspd))
   (setq _RFspd (float __RFspd))
   (setq _RBspd (float __RBspd))
   (setq _gear (round __gear))
   (setq _speed (float __speed))
   (setq _steerAng (float __steerAng))
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
  (:LFspd
   (&optional __LFspd)
   (if __LFspd (setq _LFspd __LFspd)) _LFspd)
  (:LBspd
   (&optional __LBspd)
   (if __LBspd (setq _LBspd __LBspd)) _LBspd)
  (:RFspd
   (&optional __RFspd)
   (if __RFspd (setq _RFspd __RFspd)) _RFspd)
  (:RBspd
   (&optional __RBspd)
   (if __RBspd (setq _RBspd __RBspd)) _RBspd)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:steerAng
   (&optional __steerAng)
   (if __steerAng (setq _steerAng __steerAng)) _steerAng)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _timestamp
    8
    ;; float64 _LFspd
    8
    ;; float64 _LBspd
    8
    ;; float64 _RFspd
    8
    ;; float64 _RBspd
    8
    ;; int8 _gear
    1
    ;; float64 _speed
    8
    ;; float64 _steerAng
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; float64 _LFspd
       (sys::poke _LFspd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _LBspd
       (sys::poke _LBspd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _RFspd
       (sys::poke _RFspd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _RBspd
       (sys::poke _RBspd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _gear
       (write-byte _gear s)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steerAng
       (sys::poke _steerAng (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _LFspd
     (setq _LFspd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _LBspd
     (setq _LBspd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _RFspd
     (setq _RFspd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _RBspd
     (setq _RBspd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gear 127) (setq _gear (- _gear 256)))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steerAng
     (setq _steerAng (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ys_ros_msgs::VehicleFeed :md5sum-) "138084c58c4fbccd8851afdacaa5730e")
(setf (get ys_ros_msgs::VehicleFeed :datatype-) "ys_ros_msgs/VehicleFeed")
(setf (get ys_ros_msgs::VehicleFeed :definition-)
      "Header header
# feed of wheel speed and gear for INS
time timestamp
float64 LFspd  #left front, km/h
float64 LBspd  #left behind km/h
float64 RFspd  #right front km/h
float64 RBspd  #right behind km/h
int8 gear   # P R N D 1 2 3 4
float64 speed #车速，km/h
float64 steerAng # 方向盘转角，左正右负,deg

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



(provide :ys_ros_msgs/VehicleFeed "138084c58c4fbccd8851afdacaa5730e")


