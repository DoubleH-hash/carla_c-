;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::VisionDetection)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'VisionDetection (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::VISIONDETECTION")
  (make-package "YS_ROS_MSGS::VISIONDETECTION"))

(in-package "ROS")
;;//! \htmlinclude VisionDetection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ys_ros_msgs::VisionDetection
  :super ros::object
  :slots (_id _pose ))

(defmethod ys_ros_msgs::VisionDetection
  (:init
   (&key
    ((:id __id) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _pose __pose)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get ys_ros_msgs::VisionDetection :md5sum-) "95e38df87200e40f187710e349905573")
(setf (get ys_ros_msgs::VisionDetection :datatype-) "ys_ros_msgs/VisionDetection")
(setf (get ys_ros_msgs::VisionDetection :definition-)
      "string id     # obstacle name

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



(provide :ys_ros_msgs/VisionDetection "95e38df87200e40f187710e349905573")


