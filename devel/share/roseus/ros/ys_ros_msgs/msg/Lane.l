;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::Lane)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'Lane (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::LANE")
  (make-package "YS_ROS_MSGS::LANE"))

(in-package "ROS")
;;//! \htmlinclude Lane.msg.html


(defclass ys_ros_msgs::Lane
  :super ros::object
  :slots (_point_num _points ))

(defmethod ys_ros_msgs::Lane
  (:init
   (&key
    ((:point_num __point_num) 0)
    ((:points __points) ())
    )
   (send-super :init)
   (setq _point_num (round __point_num))
   (setq _points __points)
   self)
  (:point_num
   (&optional __point_num)
   (if __point_num (setq _point_num __point_num)) _point_num)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; int32 _point_num
    4
    ;; ys_ros_msgs/PointXYA[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _point_num
       (write-long _point_num s)
     ;; ys_ros_msgs/PointXYA[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _point_num
     (setq _point_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ys_ros_msgs/PointXYA[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance ys_ros_msgs::PointXYA :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ys_ros_msgs::Lane :md5sum-) "e74866261a63d1ab8c60bcad421a3b72")
(setf (get ys_ros_msgs::Lane :datatype-) "ys_ros_msgs/Lane")
(setf (get ys_ros_msgs::Lane :definition-)
      "int32 point_num
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



(provide :ys_ros_msgs/Lane "e74866261a63d1ab8c60bcad421a3b72")


