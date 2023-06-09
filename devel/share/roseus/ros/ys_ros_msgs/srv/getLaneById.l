;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::getLaneById)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'getLaneById (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::GETLANEBYID")
  (make-package "YS_ROS_MSGS::GETLANEBYID"))
(unless (find-package "YS_ROS_MSGS::GETLANEBYIDREQUEST")
  (make-package "YS_ROS_MSGS::GETLANEBYIDREQUEST"))
(unless (find-package "YS_ROS_MSGS::GETLANEBYIDRESPONSE")
  (make-package "YS_ROS_MSGS::GETLANEBYIDRESPONSE"))

(in-package "ROS")





(defclass ys_ros_msgs::getLaneByIdRequest
  :super ros::object
  :slots (_lane_id ))

(defmethod ys_ros_msgs::getLaneByIdRequest
  (:init
   (&key
    ((:lane_id __lane_id) 0)
    )
   (send-super :init)
   (setq _lane_id (round __lane_id))
   self)
  (:lane_id
   (&optional __lane_id)
   (if __lane_id (setq _lane_id __lane_id)) _lane_id)
  (:serialization-length
   ()
   (+
    ;; int32 _lane_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _lane_id
       (write-long _lane_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _lane_id
     (setq _lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ys_ros_msgs::getLaneByIdResponse
  :super ros::object
  :slots (_lane ))

(defmethod ys_ros_msgs::getLaneByIdResponse
  (:init
   (&key
    ((:lane __lane) (instance ys_ros_msgs::Lane :init))
    )
   (send-super :init)
   (setq _lane __lane)
   self)
  (:lane
   (&rest __lane)
   (if (keywordp (car __lane))
       (send* _lane __lane)
     (progn
       (if __lane (setq _lane (car __lane)))
       _lane)))
  (:serialization-length
   ()
   (+
    ;; ys_ros_msgs/Lane _lane
    (send _lane :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ys_ros_msgs/Lane _lane
       (send _lane :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ys_ros_msgs/Lane _lane
     (send _lane :deserialize buf ptr-) (incf ptr- (send _lane :serialization-length))
   ;;
   self)
  )

(defclass ys_ros_msgs::getLaneById
  :super ros::object
  :slots ())

(setf (get ys_ros_msgs::getLaneById :md5sum-) "b5929bbea2e368bcec6d7de3a649d93e")
(setf (get ys_ros_msgs::getLaneById :datatype-) "ys_ros_msgs/getLaneById")
(setf (get ys_ros_msgs::getLaneById :request) ys_ros_msgs::getLaneByIdRequest)
(setf (get ys_ros_msgs::getLaneById :response) ys_ros_msgs::getLaneByIdResponse)

(defmethod ys_ros_msgs::getLaneByIdRequest
  (:response () (instance ys_ros_msgs::getLaneByIdResponse :init)))

(setf (get ys_ros_msgs::getLaneByIdRequest :md5sum-) "b5929bbea2e368bcec6d7de3a649d93e")
(setf (get ys_ros_msgs::getLaneByIdRequest :datatype-) "ys_ros_msgs/getLaneByIdRequest")
(setf (get ys_ros_msgs::getLaneByIdRequest :definition-)
      "int32 lane_id
---
Lane lane

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

(setf (get ys_ros_msgs::getLaneByIdResponse :md5sum-) "b5929bbea2e368bcec6d7de3a649d93e")
(setf (get ys_ros_msgs::getLaneByIdResponse :datatype-) "ys_ros_msgs/getLaneByIdResponse")
(setf (get ys_ros_msgs::getLaneByIdResponse :definition-)
      "int32 lane_id
---
Lane lane

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



(provide :ys_ros_msgs/getLaneById "b5929bbea2e368bcec6d7de3a649d93e")


