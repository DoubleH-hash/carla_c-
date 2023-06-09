;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::LaneDetection)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'LaneDetection (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::LANEDETECTION")
  (make-package "YS_ROS_MSGS::LANEDETECTION"))

(in-package "ROS")
;;//! \htmlinclude LaneDetection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ys_ros_msgs::LaneDetection
  :super ros::object
  :slots (_id _points ))

(defmethod ys_ros_msgs::LaneDetection
  (:init
   (&key
    ((:id __id) 0)
    ((:points __points) ())
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _points __points)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
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
    ;; int8 _id
    1
    ;; geometry_msgs/Point32[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _id
       (write-byte _id s)
     ;; geometry_msgs/Point32[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; geometry_msgs/Point32[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ys_ros_msgs::LaneDetection :md5sum-) "ae84749a7fa640c3dc057405822cdef8")
(setf (get ys_ros_msgs::LaneDetection :datatype-) "ys_ros_msgs/LaneDetection")
(setf (get ys_ros_msgs::LaneDetection :definition-)
      "int8 id     # lane number

geometry_msgs/Point32[] points   # lane point list
================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :ys_ros_msgs/LaneDetection "ae84749a7fa640c3dc057405822cdef8")


