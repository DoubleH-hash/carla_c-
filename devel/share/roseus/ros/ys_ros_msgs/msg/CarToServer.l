;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::CarToServer)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'CarToServer (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::CARTOSERVER")
  (make-package "YS_ROS_MSGS::CARTOSERVER"))

(in-package "ROS")
;;//! \htmlinclude CarToServer.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ys_ros_msgs::CarToServer
  :super ros::object
  :slots (_header _curMisStatus _curToStartDis _curToEndDis _failure ))

(defmethod ys_ros_msgs::CarToServer
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:curMisStatus __curMisStatus) 0)
    ((:curToStartDis __curToStartDis) 0.0)
    ((:curToEndDis __curToEndDis) 0.0)
    ((:failure __failure) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _curMisStatus (round __curMisStatus))
   (setq _curToStartDis (float __curToStartDis))
   (setq _curToEndDis (float __curToEndDis))
   (setq _failure (round __failure))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:curMisStatus
   (&optional __curMisStatus)
   (if __curMisStatus (setq _curMisStatus __curMisStatus)) _curMisStatus)
  (:curToStartDis
   (&optional __curToStartDis)
   (if __curToStartDis (setq _curToStartDis __curToStartDis)) _curToStartDis)
  (:curToEndDis
   (&optional __curToEndDis)
   (if __curToEndDis (setq _curToEndDis __curToEndDis)) _curToEndDis)
  (:failure
   (&optional __failure)
   (if __failure (setq _failure __failure)) _failure)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _curMisStatus
    1
    ;; float64 _curToStartDis
    8
    ;; float64 _curToEndDis
    8
    ;; int8 _failure
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _curMisStatus
       (write-byte _curMisStatus s)
     ;; float64 _curToStartDis
       (sys::poke _curToStartDis (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _curToEndDis
       (sys::poke _curToEndDis (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _failure
       (write-byte _failure s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _curMisStatus
     (setq _curMisStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _curMisStatus 127) (setq _curMisStatus (- _curMisStatus 256)))
   ;; float64 _curToStartDis
     (setq _curToStartDis (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _curToEndDis
     (setq _curToEndDis (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _failure
     (setq _failure (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _failure 127) (setq _failure (- _failure 256)))
   ;;
   self)
  )

(setf (get ys_ros_msgs::CarToServer :md5sum-) "cdaf2bbe69c52e67fbea6c48be673f0c")
(setf (get ys_ros_msgs::CarToServer :datatype-) "ys_ros_msgs/CarToServer")
(setf (get ys_ros_msgs::CarToServer :definition-)
      "Header header
# int8  taskStatus   #0:wait,1:driving，2:arrive,
# bool bWaitStation  # true:wait for go to station,false:not wait for go to station
# int8  taskCancelStatus  #0:normal,1:task cancel finished,2:task cancel failed
# bool bGoOutStation #true in out station point ,false not in out station point
int8 curMisStatus #0:normal,1:enter in station,2:arrive station,3:go out station
float64 curToStartDis
float64 curToEndDis
int8 failure #0--normal,1--no map,2--have Obstacle,3--too far;4
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



(provide :ys_ros_msgs/CarToServer "cdaf2bbe69c52e67fbea6c48be673f0c")


