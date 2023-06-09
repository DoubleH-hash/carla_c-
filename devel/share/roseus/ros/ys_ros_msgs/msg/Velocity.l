;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::Velocity)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'Velocity (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::VELOCITY")
  (make-package "YS_ROS_MSGS::VELOCITY"))

(in-package "ROS")
;;//! \htmlinclude Velocity.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ys_ros_msgs::Velocity
  :super ros::object
  :slots (_header _timestamp _velocity _mode ))

(defmethod ys_ros_msgs::Velocity
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:velocity __velocity) 0.0)
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _timestamp __timestamp)
   (setq _velocity (float __velocity))
   (setq _mode (round __mode))
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
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _timestamp
    8
    ;; float64 _velocity
    8
    ;; int32 _mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _mode
       (write-long _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ys_ros_msgs::Velocity :md5sum-) "d5c68ed5f3076bf31f887ab95f45d96e")
(setf (get ys_ros_msgs::Velocity :datatype-) "ys_ros_msgs/Velocity")
(setf (get ys_ros_msgs::Velocity :definition-)
      "Header header
time    timestamp
float64 velocity
int32 mode

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



(provide :ys_ros_msgs/Velocity "d5c68ed5f3076bf31f887ab95f45d96e")


