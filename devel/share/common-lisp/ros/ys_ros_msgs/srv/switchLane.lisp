; Auto-generated. Do not edit!


(cl:in-package ys_ros_msgs-srv)


;//! \htmlinclude switchLane-request.msg.html

(cl:defclass <switchLane-request> (roslisp-msg-protocol:ros-message)
  ((lane_id
    :reader lane_id
    :initarg :lane_id
    :type cl:integer
    :initform 0))
)

(cl:defclass switchLane-request (<switchLane-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <switchLane-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'switchLane-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ys_ros_msgs-srv:<switchLane-request> is deprecated: use ys_ros_msgs-srv:switchLane-request instead.")))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <switchLane-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-srv:lane_id-val is deprecated.  Use ys_ros_msgs-srv:lane_id instead.")
  (lane_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <switchLane-request>) ostream)
  "Serializes a message object of type '<switchLane-request>"
  (cl:let* ((signed (cl:slot-value msg 'lane_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <switchLane-request>) istream)
  "Deserializes a message object of type '<switchLane-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<switchLane-request>)))
  "Returns string type for a service object of type '<switchLane-request>"
  "ys_ros_msgs/switchLaneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'switchLane-request)))
  "Returns string type for a service object of type 'switchLane-request"
  "ys_ros_msgs/switchLaneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<switchLane-request>)))
  "Returns md5sum for a message object of type '<switchLane-request>"
  "173693392e9fa111283169251c339a9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'switchLane-request)))
  "Returns md5sum for a message object of type 'switchLane-request"
  "173693392e9fa111283169251c339a9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<switchLane-request>)))
  "Returns full string definition for message of type '<switchLane-request>"
  (cl:format cl:nil "int32 lane_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'switchLane-request)))
  "Returns full string definition for message of type 'switchLane-request"
  (cl:format cl:nil "int32 lane_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <switchLane-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <switchLane-request>))
  "Converts a ROS message object to a list"
  (cl:list 'switchLane-request
    (cl:cons ':lane_id (lane_id msg))
))
;//! \htmlinclude switchLane-response.msg.html

(cl:defclass <switchLane-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass switchLane-response (<switchLane-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <switchLane-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'switchLane-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ys_ros_msgs-srv:<switchLane-response> is deprecated: use ys_ros_msgs-srv:switchLane-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <switchLane-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-srv:success-val is deprecated.  Use ys_ros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <switchLane-response>) ostream)
  "Serializes a message object of type '<switchLane-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <switchLane-response>) istream)
  "Deserializes a message object of type '<switchLane-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<switchLane-response>)))
  "Returns string type for a service object of type '<switchLane-response>"
  "ys_ros_msgs/switchLaneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'switchLane-response)))
  "Returns string type for a service object of type 'switchLane-response"
  "ys_ros_msgs/switchLaneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<switchLane-response>)))
  "Returns md5sum for a message object of type '<switchLane-response>"
  "173693392e9fa111283169251c339a9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'switchLane-response)))
  "Returns md5sum for a message object of type 'switchLane-response"
  "173693392e9fa111283169251c339a9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<switchLane-response>)))
  "Returns full string definition for message of type '<switchLane-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'switchLane-response)))
  "Returns full string definition for message of type 'switchLane-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <switchLane-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <switchLane-response>))
  "Converts a ROS message object to a list"
  (cl:list 'switchLane-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'switchLane)))
  'switchLane-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'switchLane)))
  'switchLane-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'switchLane)))
  "Returns string type for a service object of type '<switchLane>"
  "ys_ros_msgs/switchLane")