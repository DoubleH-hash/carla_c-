; Auto-generated. Do not edit!


(cl:in-package ys_ros_msgs-srv)


;//! \htmlinclude laneFinish-request.msg.html

(cl:defclass <laneFinish-request> (roslisp-msg-protocol:ros-message)
  ((lane_id
    :reader lane_id
    :initarg :lane_id
    :type cl:integer
    :initform 0))
)

(cl:defclass laneFinish-request (<laneFinish-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <laneFinish-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'laneFinish-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ys_ros_msgs-srv:<laneFinish-request> is deprecated: use ys_ros_msgs-srv:laneFinish-request instead.")))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <laneFinish-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-srv:lane_id-val is deprecated.  Use ys_ros_msgs-srv:lane_id instead.")
  (lane_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <laneFinish-request>) ostream)
  "Serializes a message object of type '<laneFinish-request>"
  (cl:let* ((signed (cl:slot-value msg 'lane_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <laneFinish-request>) istream)
  "Deserializes a message object of type '<laneFinish-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<laneFinish-request>)))
  "Returns string type for a service object of type '<laneFinish-request>"
  "ys_ros_msgs/laneFinishRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'laneFinish-request)))
  "Returns string type for a service object of type 'laneFinish-request"
  "ys_ros_msgs/laneFinishRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<laneFinish-request>)))
  "Returns md5sum for a message object of type '<laneFinish-request>"
  "173693392e9fa111283169251c339a9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'laneFinish-request)))
  "Returns md5sum for a message object of type 'laneFinish-request"
  "173693392e9fa111283169251c339a9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<laneFinish-request>)))
  "Returns full string definition for message of type '<laneFinish-request>"
  (cl:format cl:nil "int32 lane_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'laneFinish-request)))
  "Returns full string definition for message of type 'laneFinish-request"
  (cl:format cl:nil "int32 lane_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <laneFinish-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <laneFinish-request>))
  "Converts a ROS message object to a list"
  (cl:list 'laneFinish-request
    (cl:cons ':lane_id (lane_id msg))
))
;//! \htmlinclude laneFinish-response.msg.html

(cl:defclass <laneFinish-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass laneFinish-response (<laneFinish-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <laneFinish-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'laneFinish-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ys_ros_msgs-srv:<laneFinish-response> is deprecated: use ys_ros_msgs-srv:laneFinish-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <laneFinish-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-srv:success-val is deprecated.  Use ys_ros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <laneFinish-response>) ostream)
  "Serializes a message object of type '<laneFinish-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <laneFinish-response>) istream)
  "Deserializes a message object of type '<laneFinish-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<laneFinish-response>)))
  "Returns string type for a service object of type '<laneFinish-response>"
  "ys_ros_msgs/laneFinishResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'laneFinish-response)))
  "Returns string type for a service object of type 'laneFinish-response"
  "ys_ros_msgs/laneFinishResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<laneFinish-response>)))
  "Returns md5sum for a message object of type '<laneFinish-response>"
  "173693392e9fa111283169251c339a9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'laneFinish-response)))
  "Returns md5sum for a message object of type 'laneFinish-response"
  "173693392e9fa111283169251c339a9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<laneFinish-response>)))
  "Returns full string definition for message of type '<laneFinish-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'laneFinish-response)))
  "Returns full string definition for message of type 'laneFinish-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <laneFinish-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <laneFinish-response>))
  "Converts a ROS message object to a list"
  (cl:list 'laneFinish-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'laneFinish)))
  'laneFinish-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'laneFinish)))
  'laneFinish-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'laneFinish)))
  "Returns string type for a service object of type '<laneFinish>"
  "ys_ros_msgs/laneFinish")