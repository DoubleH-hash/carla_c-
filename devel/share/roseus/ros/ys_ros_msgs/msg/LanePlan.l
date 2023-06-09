;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::LanePlan)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'LanePlan (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::LANEPLAN")
  (make-package "YS_ROS_MSGS::LANEPLAN"))

(in-package "ROS")
;;//! \htmlinclude LanePlan.msg.html


(defclass ys_ros_msgs::LanePlan
  :super ros::object
  :slots (_point_num _points _cur_pos _speed _gear ))

(defmethod ys_ros_msgs::LanePlan
  (:init
   (&key
    ((:point_num __point_num) 0)
    ((:points __points) ())
    ((:cur_pos __cur_pos) (instance ys_ros_msgs::PointXYA :init))
    ((:speed __speed) 0)
    ((:gear __gear) 0)
    )
   (send-super :init)
   (setq _point_num (round __point_num))
   (setq _points __points)
   (setq _cur_pos __cur_pos)
   (setq _speed (round __speed))
   (setq _gear (round __gear))
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
  (:cur_pos
   (&rest __cur_pos)
   (if (keywordp (car __cur_pos))
       (send* _cur_pos __cur_pos)
     (progn
       (if __cur_pos (setq _cur_pos (car __cur_pos)))
       _cur_pos)))
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:serialization-length
   ()
   (+
    ;; int32 _point_num
    4
    ;; ys_ros_msgs/PointXYA[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; ys_ros_msgs/PointXYA _cur_pos
    (send _cur_pos :serialization-length)
    ;; int8 _speed
    1
    ;; int8 _gear
    1
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
     ;; ys_ros_msgs/PointXYA _cur_pos
       (send _cur_pos :serialize s)
     ;; int8 _speed
       (write-byte _speed s)
     ;; int8 _gear
       (write-byte _gear s)
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
   ;; ys_ros_msgs/PointXYA _cur_pos
     (send _cur_pos :deserialize buf ptr-) (incf ptr- (send _cur_pos :serialization-length))
   ;; int8 _speed
     (setq _speed (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _speed 127) (setq _speed (- _speed 256)))
   ;; int8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gear 127) (setq _gear (- _gear 256)))
   ;;
   self)
  )

(setf (get ys_ros_msgs::LanePlan :md5sum-) "74956f693f7b4fb31d148cbde11780fb")
(setf (get ys_ros_msgs::LanePlan :datatype-) "ys_ros_msgs/LanePlan")
(setf (get ys_ros_msgs::LanePlan :definition-)
      "int32 point_num
PointXYA[] points
PointXYA cur_pos
int8 speed
int8 gear
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



(provide :ys_ros_msgs/LanePlan "74956f693f7b4fb31d148cbde11780fb")


