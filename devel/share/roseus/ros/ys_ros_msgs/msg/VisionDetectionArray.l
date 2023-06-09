;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::VisionDetectionArray)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'VisionDetectionArray (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::VISIONDETECTIONARRAY")
  (make-package "YS_ROS_MSGS::VISIONDETECTIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude VisionDetectionArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ys_ros_msgs::VisionDetectionArray
  :super ros::object
  :slots (_header _detections ))

(defmethod ys_ros_msgs::VisionDetectionArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:detections __detections) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _detections __detections)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:detections
   (&rest __detections)
   (if (keywordp (car __detections))
       (send* _detections __detections)
     (progn
       (if __detections (setq _detections (car __detections)))
       _detections)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ys_ros_msgs/VisionDetection[] _detections
    (apply #'+ (send-all _detections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ys_ros_msgs/VisionDetection[] _detections
     (write-long (length _detections) s)
     (dolist (elem _detections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ys_ros_msgs/VisionDetection[] _detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detections (let (r) (dotimes (i n) (push (instance ys_ros_msgs::VisionDetection :init) r)) r))
     (dolist (elem- _detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ys_ros_msgs::VisionDetectionArray :md5sum-) "939e4a41d96872ca89a2c0caea51e9c2")
(setf (get ys_ros_msgs::VisionDetectionArray :datatype-) "ys_ros_msgs/VisionDetectionArray")
(setf (get ys_ros_msgs::VisionDetectionArray :definition-)
      "std_msgs/Header header
VisionDetection[] detections
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

================================================================================
MSG: ys_ros_msgs/VisionDetection
string id     # obstacle name

geometry_msgs/Pose pose
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :ys_ros_msgs/VisionDetectionArray "939e4a41d96872ca89a2c0caea51e9c2")


