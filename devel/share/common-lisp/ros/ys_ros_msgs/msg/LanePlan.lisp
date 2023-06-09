; Auto-generated. Do not edit!


(cl:in-package ys_ros_msgs-msg)


;//! \htmlinclude LanePlan.msg.html

(cl:defclass <LanePlan> (roslisp-msg-protocol:ros-message)
  ((point_num
    :reader point_num
    :initarg :point_num
    :type cl:integer
    :initform 0)
   (points
    :reader points
    :initarg :points
    :type (cl:vector ys_ros_msgs-msg:PointXYA)
   :initform (cl:make-array 0 :element-type 'ys_ros_msgs-msg:PointXYA :initial-element (cl:make-instance 'ys_ros_msgs-msg:PointXYA)))
   (cur_pos
    :reader cur_pos
    :initarg :cur_pos
    :type ys_ros_msgs-msg:PointXYA
    :initform (cl:make-instance 'ys_ros_msgs-msg:PointXYA))
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0)
   (gear
    :reader gear
    :initarg :gear
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LanePlan (<LanePlan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LanePlan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LanePlan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ys_ros_msgs-msg:<LanePlan> is deprecated: use ys_ros_msgs-msg:LanePlan instead.")))

(cl:ensure-generic-function 'point_num-val :lambda-list '(m))
(cl:defmethod point_num-val ((m <LanePlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:point_num-val is deprecated.  Use ys_ros_msgs-msg:point_num instead.")
  (point_num m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <LanePlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:points-val is deprecated.  Use ys_ros_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'cur_pos-val :lambda-list '(m))
(cl:defmethod cur_pos-val ((m <LanePlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:cur_pos-val is deprecated.  Use ys_ros_msgs-msg:cur_pos instead.")
  (cur_pos m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <LanePlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:speed-val is deprecated.  Use ys_ros_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <LanePlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:gear-val is deprecated.  Use ys_ros_msgs-msg:gear instead.")
  (gear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LanePlan>) ostream)
  "Serializes a message object of type '<LanePlan>"
  (cl:let* ((signed (cl:slot-value msg 'point_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cur_pos) ostream)
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LanePlan>) istream)
  "Deserializes a message object of type '<LanePlan>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'point_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ys_ros_msgs-msg:PointXYA))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cur_pos) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LanePlan>)))
  "Returns string type for a message object of type '<LanePlan>"
  "ys_ros_msgs/LanePlan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LanePlan)))
  "Returns string type for a message object of type 'LanePlan"
  "ys_ros_msgs/LanePlan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LanePlan>)))
  "Returns md5sum for a message object of type '<LanePlan>"
  "74956f693f7b4fb31d148cbde11780fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LanePlan)))
  "Returns md5sum for a message object of type 'LanePlan"
  "74956f693f7b4fb31d148cbde11780fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LanePlan>)))
  "Returns full string definition for message of type '<LanePlan>"
  (cl:format cl:nil "int32 point_num~%PointXYA[] points~%PointXYA cur_pos~%int8 speed~%int8 gear~%================================================================================~%MSG: ys_ros_msgs/PointXYA~%Header header~%float64 x~%float64 y~%float64 yaw  # degs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LanePlan)))
  "Returns full string definition for message of type 'LanePlan"
  (cl:format cl:nil "int32 point_num~%PointXYA[] points~%PointXYA cur_pos~%int8 speed~%int8 gear~%================================================================================~%MSG: ys_ros_msgs/PointXYA~%Header header~%float64 x~%float64 y~%float64 yaw  # degs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LanePlan>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cur_pos))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LanePlan>))
  "Converts a ROS message object to a list"
  (cl:list 'LanePlan
    (cl:cons ':point_num (point_num msg))
    (cl:cons ':points (points msg))
    (cl:cons ':cur_pos (cur_pos msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':gear (gear msg))
))
