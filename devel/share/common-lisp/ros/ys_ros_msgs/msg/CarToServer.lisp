; Auto-generated. Do not edit!


(cl:in-package ys_ros_msgs-msg)


;//! \htmlinclude CarToServer.msg.html

(cl:defclass <CarToServer> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (curMisStatus
    :reader curMisStatus
    :initarg :curMisStatus
    :type cl:fixnum
    :initform 0)
   (curToStartDis
    :reader curToStartDis
    :initarg :curToStartDis
    :type cl:float
    :initform 0.0)
   (curToEndDis
    :reader curToEndDis
    :initarg :curToEndDis
    :type cl:float
    :initform 0.0)
   (failure
    :reader failure
    :initarg :failure
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CarToServer (<CarToServer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarToServer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarToServer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ys_ros_msgs-msg:<CarToServer> is deprecated: use ys_ros_msgs-msg:CarToServer instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CarToServer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:header-val is deprecated.  Use ys_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'curMisStatus-val :lambda-list '(m))
(cl:defmethod curMisStatus-val ((m <CarToServer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:curMisStatus-val is deprecated.  Use ys_ros_msgs-msg:curMisStatus instead.")
  (curMisStatus m))

(cl:ensure-generic-function 'curToStartDis-val :lambda-list '(m))
(cl:defmethod curToStartDis-val ((m <CarToServer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:curToStartDis-val is deprecated.  Use ys_ros_msgs-msg:curToStartDis instead.")
  (curToStartDis m))

(cl:ensure-generic-function 'curToEndDis-val :lambda-list '(m))
(cl:defmethod curToEndDis-val ((m <CarToServer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:curToEndDis-val is deprecated.  Use ys_ros_msgs-msg:curToEndDis instead.")
  (curToEndDis m))

(cl:ensure-generic-function 'failure-val :lambda-list '(m))
(cl:defmethod failure-val ((m <CarToServer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:failure-val is deprecated.  Use ys_ros_msgs-msg:failure instead.")
  (failure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarToServer>) ostream)
  "Serializes a message object of type '<CarToServer>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'curMisStatus)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'curToStartDis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'curToEndDis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'failure)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarToServer>) istream)
  "Deserializes a message object of type '<CarToServer>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'curMisStatus) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curToStartDis) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curToEndDis) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'failure) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarToServer>)))
  "Returns string type for a message object of type '<CarToServer>"
  "ys_ros_msgs/CarToServer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarToServer)))
  "Returns string type for a message object of type 'CarToServer"
  "ys_ros_msgs/CarToServer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarToServer>)))
  "Returns md5sum for a message object of type '<CarToServer>"
  "cdaf2bbe69c52e67fbea6c48be673f0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarToServer)))
  "Returns md5sum for a message object of type 'CarToServer"
  "cdaf2bbe69c52e67fbea6c48be673f0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarToServer>)))
  "Returns full string definition for message of type '<CarToServer>"
  (cl:format cl:nil "Header header~%# int8  taskStatus   #0:wait,1:driving，2:arrive,~%# bool bWaitStation  # true:wait for go to station,false:not wait for go to station~%# int8  taskCancelStatus  #0:normal,1:task cancel finished,2:task cancel failed~%# bool bGoOutStation #true in out station point ,false not in out station point~%int8 curMisStatus #0:normal,1:enter in station,2:arrive station,3:go out station~%float64 curToStartDis~%float64 curToEndDis~%int8 failure #0--normal,1--no map,2--have Obstacle,3--too far;4~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarToServer)))
  "Returns full string definition for message of type 'CarToServer"
  (cl:format cl:nil "Header header~%# int8  taskStatus   #0:wait,1:driving，2:arrive,~%# bool bWaitStation  # true:wait for go to station,false:not wait for go to station~%# int8  taskCancelStatus  #0:normal,1:task cancel finished,2:task cancel failed~%# bool bGoOutStation #true in out station point ,false not in out station point~%int8 curMisStatus #0:normal,1:enter in station,2:arrive station,3:go out station~%float64 curToStartDis~%float64 curToEndDis~%int8 failure #0--normal,1--no map,2--have Obstacle,3--too far;4~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarToServer>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarToServer>))
  "Converts a ROS message object to a list"
  (cl:list 'CarToServer
    (cl:cons ':header (header msg))
    (cl:cons ':curMisStatus (curMisStatus msg))
    (cl:cons ':curToStartDis (curToStartDis msg))
    (cl:cons ':curToEndDis (curToEndDis msg))
    (cl:cons ':failure (failure msg))
))
