;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::Map)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'Map (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::MAP")
  (make-package "YS_ROS_MSGS::MAP"))

(in-package "ROS")
;;//! \htmlinclude Map.msg.html


(defclass ys_ros_msgs::Map
  :super ros::object
  :slots (_lane_num _lanes ))

(defmethod ys_ros_msgs::Map
  (:init
   (&key
    ((:lane_num __lane_num) 0)
    ((:lanes __lanes) ())
    )
   (send-super :init)
   (setq _lane_num (round __lane_num))
   (setq _lanes __lanes)
   self)
  (:lane_num
   (&optional __lane_num)
   (if __lane_num (setq _lane_num __lane_num)) _lane_num)
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:serialization-length
   ()
   (+
    ;; int32 _lane_num
    4
    ;; ys_ros_msgs/Lane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _lane_num
       (write-long _lane_num s)
     ;; ys_ros_msgs/Lane[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _lane_num
     (setq _lane_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ys_ros_msgs/Lane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance ys_ros_msgs::Lane :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ys_ros_msgs::Map :md5sum-) "c3d491eef4a21986c927049c6c1329f8")
(setf (get ys_ros_msgs::Map :datatype-) "ys_ros_msgs/Map")
(setf (get ys_ros_msgs::Map :definition-)
      "int32 lane_num
Lane[] lanes

================================================================================
MSG: ys_ros_msgs/Lane
int32 point_num
PointXYA[] points
================================================================================
MSG: ys_ros_msgs/PointXYA
Header header
float64 x
float64 y
float64 yaw  # degs

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



(provide :ys_ros_msgs/Map "c3d491eef4a21986c927049c6c1329f8")


