;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::laneFinish)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'laneFinish (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::LANEFINISH")
  (make-package "YS_ROS_MSGS::LANEFINISH"))
(unless (find-package "YS_ROS_MSGS::LANEFINISHREQUEST")
  (make-package "YS_ROS_MSGS::LANEFINISHREQUEST"))
(unless (find-package "YS_ROS_MSGS::LANEFINISHRESPONSE")
  (make-package "YS_ROS_MSGS::LANEFINISHRESPONSE"))

(in-package "ROS")





(defclass ys_ros_msgs::laneFinishRequest
  :super ros::object
  :slots (_lane_id ))

(defmethod ys_ros_msgs::laneFinishRequest
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

(defclass ys_ros_msgs::laneFinishResponse
  :super ros::object
  :slots (_success ))

(defmethod ys_ros_msgs::laneFinishResponse
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

(defclass ys_ros_msgs::laneFinish
  :super ros::object
  :slots ())

(setf (get ys_ros_msgs::laneFinish :md5sum-) "173693392e9fa111283169251c339a9c")
(setf (get ys_ros_msgs::laneFinish :datatype-) "ys_ros_msgs/laneFinish")
(setf (get ys_ros_msgs::laneFinish :request) ys_ros_msgs::laneFinishRequest)
(setf (get ys_ros_msgs::laneFinish :response) ys_ros_msgs::laneFinishResponse)

(defmethod ys_ros_msgs::laneFinishRequest
  (:response () (instance ys_ros_msgs::laneFinishResponse :init)))

(setf (get ys_ros_msgs::laneFinishRequest :md5sum-) "173693392e9fa111283169251c339a9c")
(setf (get ys_ros_msgs::laneFinishRequest :datatype-) "ys_ros_msgs/laneFinishRequest")
(setf (get ys_ros_msgs::laneFinishRequest :definition-)
      "int32 lane_id
---
bool success
")

(setf (get ys_ros_msgs::laneFinishResponse :md5sum-) "173693392e9fa111283169251c339a9c")
(setf (get ys_ros_msgs::laneFinishResponse :datatype-) "ys_ros_msgs/laneFinishResponse")
(setf (get ys_ros_msgs::laneFinishResponse :definition-)
      "int32 lane_id
---
bool success
")



(provide :ys_ros_msgs/laneFinish "173693392e9fa111283169251c339a9c")


