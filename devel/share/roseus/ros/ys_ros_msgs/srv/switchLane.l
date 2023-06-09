;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::switchLane)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'switchLane (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::SWITCHLANE")
  (make-package "YS_ROS_MSGS::SWITCHLANE"))
(unless (find-package "YS_ROS_MSGS::SWITCHLANEREQUEST")
  (make-package "YS_ROS_MSGS::SWITCHLANEREQUEST"))
(unless (find-package "YS_ROS_MSGS::SWITCHLANERESPONSE")
  (make-package "YS_ROS_MSGS::SWITCHLANERESPONSE"))

(in-package "ROS")





(defclass ys_ros_msgs::switchLaneRequest
  :super ros::object
  :slots (_lane_id ))

(defmethod ys_ros_msgs::switchLaneRequest
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

(defclass ys_ros_msgs::switchLaneResponse
  :super ros::object
  :slots (_success ))

(defmethod ys_ros_msgs::switchLaneResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ys_ros_msgs::switchLane
  :super ros::object
  :slots ())

(setf (get ys_ros_msgs::switchLane :md5sum-) "173693392e9fa111283169251c339a9c")
(setf (get ys_ros_msgs::switchLane :datatype-) "ys_ros_msgs/switchLane")
(setf (get ys_ros_msgs::switchLane :request) ys_ros_msgs::switchLaneRequest)
(setf (get ys_ros_msgs::switchLane :response) ys_ros_msgs::switchLaneResponse)

(defmethod ys_ros_msgs::switchLaneRequest
  (:response () (instance ys_ros_msgs::switchLaneResponse :init)))

(setf (get ys_ros_msgs::switchLaneRequest :md5sum-) "173693392e9fa111283169251c339a9c")
(setf (get ys_ros_msgs::switchLaneRequest :datatype-) "ys_ros_msgs/switchLaneRequest")
(setf (get ys_ros_msgs::switchLaneRequest :definition-)
      "int32 lane_id
---
bool success
")

(setf (get ys_ros_msgs::switchLaneResponse :md5sum-) "173693392e9fa111283169251c339a9c")
(setf (get ys_ros_msgs::switchLaneResponse :datatype-) "ys_ros_msgs/switchLaneResponse")
(setf (get ys_ros_msgs::switchLaneResponse :definition-)
      "int32 lane_id
---
bool success
")



(provide :ys_ros_msgs/switchLane "173693392e9fa111283169251c339a9c")


