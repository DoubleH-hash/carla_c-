; Auto-generated. Do not edit!


(cl:in-package ys_ros_msgs-srv)


;//! \htmlinclude getLaneById-request.msg.html

(cl:defclass <getLaneById-request> (roslisp-msg-protocol:ros-message)
  ((lane_id
    :reader lane_id
    :initarg :lane_id
    :type cl:integer
    :initform 0))
)

(cl:defclass getLaneById-request (<getLaneById-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getLaneById-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getLaneById-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ys_ros_msgs-srv:<getLaneById-request> is deprecated: use ys_ros_msgs-srv:getLaneById-request instead.")))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <getLaneById-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-srv:lane_id-val is deprecated.  Use ys_ros_msgs-srv:lane_id instead.")
  (lane_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getLaneById-request>) ostream)
  "Serializes a message object of type '<getLaneById-request>"
  (cl:let* ((signed (cl:slot-value msg 'lane_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getLaneById-request>) istream)
  "Deserializes a message object of type '<getLaneById-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getLaneById-request>)))
  "Returns string type for a service object of type '<getLaneById-request>"
  "ys_ros_msgs/getLaneByIdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getLaneById-request)))
  "Returns string type for a service object of type 'getLaneById-request"
  "ys_ros_msgs/getLaneByIdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getLaneById-request>)))
  "Returns md5sum for a message object of type '<getLaneById-request>"
  "b5929bbea2e368bcec6d7de3a649d93e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getLaneById-request)))
  "Returns md5sum for a message object of type 'getLaneById-request"
  "b5929bbea2e368bcec6d7de3a649d93e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getLaneById-request>)))
  "Returns full string definition for message of type '<getLaneById-request>"
  (cl:format cl:nil "int32 lane_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getLaneById-request)))
  "Returns full string definition for message of type 'getLaneById-request"
  (cl:format cl:nil "int32 lane_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getLaneById-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getLaneById-request>))
  "Converts a ROS message object to a list"
  (cl:list 'getLaneById-request
    (cl:cons ':lane_id (lane_id msg))
))
;//! \htmlinclude getLaneById-response.msg.html

(cl:defclass <getLaneById-response> (roslisp-msg-protocol:ros-message)
  ((lane
    :reader lane
    :initarg :lane
    :type ys_ros_msgs-msg:Lane
    :initform (cl:make-instance 'ys_ros_msgs-msg:Lane)))
)

(cl:defclass getLaneById-response (<getLaneById-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getLaneById-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getLaneById-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ys_ros_msgs-srv:<getLaneById-response> is deprecated: use ys_ros_msgs-srv:getLaneById-response instead.")))

(cl:ensure-generic-function 'lane-val :lambda-list '(m))
(cl:defmethod lane-val ((m <getLaneById-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-srv:lane-val is deprecated.  Use ys_ros_msgs-srv:lane instead.")
  (lane m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getLaneById-response>) ostream)
  "Serializes a message object of type '<getLaneById-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getLaneById-response>) istream)
  "Deserializes a message object of type '<getLaneById-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getLaneById-response>)))
  "Returns string type for a service object of type '<getLaneById-response>"
  "ys_ros_msgs/getLaneByIdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getLaneById-response)))
  "Returns string type for a service object of type 'getLaneById-response"
  "ys_ros_msgs/getLaneByIdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getLaneById-response>)))
  "Returns md5sum for a message object of type '<getLaneById-response>"
  "b5929bbea2e368bcec6d7de3a649d93e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getLaneById-response)))
  "Returns md5sum for a message object of type 'getLaneById-response"
  "b5929bbea2e368bcec6d7de3a649d93e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getLaneById-response>)))
  "Returns full string definition for message of type '<getLaneById-response>"
  (cl:format cl:nil "Lane lane~%~%================================================================================~%MSG: ys_ros_msgs/Lane~%int32 point_num~%PointXYA[] points~%================================================================================~%MSG: ys_ros_msgs/PointXYA~%Header header~%float64 x~%float64 y~%float64 yaw  # degs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getLaneById-response)))
  "Returns full string definition for message of type 'getLaneById-response"
  (cl:format cl:nil "Lane lane~%~%================================================================================~%MSG: ys_ros_msgs/Lane~%int32 point_num~%PointXYA[] points~%================================================================================~%MSG: ys_ros_msgs/PointXYA~%Header header~%float64 x~%float64 y~%float64 yaw  # degs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getLaneById-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getLaneById-response>))
  "Converts a ROS message object to a list"
  (cl:list 'getLaneById-response
    (cl:cons ':lane (lane msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'getLaneById)))
  'getLaneById-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'getLaneById)))
  'getLaneById-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getLaneById)))
  "Returns string type for a service object of type '<getLaneById>"
  "ys_ros_msgs/getLaneById")