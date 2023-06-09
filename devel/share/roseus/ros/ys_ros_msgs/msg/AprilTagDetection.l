;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::AprilTagDetection)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'AprilTagDetection (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::APRILTAGDETECTION")
  (make-package "YS_ROS_MSGS::APRILTAGDETECTION"))

(in-package "ROS")
;;//! \htmlinclude AprilTagDetection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ys_ros_msgs::AprilTagDetection
  :super ros::object
  :slots (_family _id _center _corners _pose ))

(defmethod ys_ros_msgs::AprilTagDetection
  (:init
   (&key
    ((:family __family) "")
    ((:id __id) 0)
    ((:center __center) (instance geometry_msgs::Point :init))
    ((:corners __corners) (let (r) (dotimes (i 4) (push (instance geometry_msgs::Point :init) r)) r))
    ((:pose __pose) (instance geometry_msgs::PoseWithCovarianceStamped :init))
    )
   (send-super :init)
   (setq _family (string __family))
   (setq _id (round __id))
   (setq _center __center)
   (setq _corners __corners)
   (setq _pose __pose)
   self)
  (:family
   (&optional __family)
   (if __family (setq _family __family)) _family)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:corners
   (&rest __corners)
   (if (keywordp (car __corners))
       (send* _corners __corners)
     (progn
       (if __corners (setq _corners (car __corners)))
       _corners)))
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
    ;; string _family
    4 (length _family)
    ;; int32 _id
    4
    ;; geometry_msgs/Point _center
    (send _center :serialization-length)
    ;; geometry_msgs/Point[4] _corners
    (apply #'+ (send-all _corners :serialization-length))
    ;; geometry_msgs/PoseWithCovarianceStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _family
       (write-long (length _family) s) (princ _family s)
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/Point _center
       (send _center :serialize s)
     ;; geometry_msgs/Point[4] _corners
     (dolist (elem _corners)
       (send elem :serialize s)
       )
     ;; geometry_msgs/PoseWithCovarianceStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _family
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _family (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; geometry_msgs/Point[4] _corners
   (dotimes (i 4)
     (send (elt _corners i) :deserialize buf ptr-) (incf ptr- (send (elt _corners i) :serialization-length))
     )
   ;; geometry_msgs/PoseWithCovarianceStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get ys_ros_msgs::AprilTagDetection :md5sum-) "2c09a74bc79c22ff38a6979274d39267")
(setf (get ys_ros_msgs::AprilTagDetection :datatype-) "ys_ros_msgs/AprilTagDetection")
(setf (get ys_ros_msgs::AprilTagDetection :definition-)
      "string family
int32 id
geometry_msgs/Point center      # centre in (x,y) pixel coordinates
geometry_msgs/Point[4] corners  # corners of tag ((x1,y1),(x2,y2),...)
geometry_msgs/PoseWithCovarianceStamped pose

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :ys_ros_msgs/AprilTagDetection "2c09a74bc79c22ff38a6979274d39267")


