; Auto-generated. Do not edit!


(cl:in-package ys_ros_msgs-msg)


;//! \htmlinclude VisionDetection.msg.html

(cl:defclass <VisionDetection> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass VisionDetection (<VisionDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ys_ros_msgs-msg:<VisionDetection> is deprecated: use ys_ros_msgs-msg:VisionDetection instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <VisionDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:id-val is deprecated.  Use ys_ros_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <VisionDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:pose-val is deprecated.  Use ys_ros_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionDetection>) ostream)
  "Serializes a message object of type '<VisionDetection>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionDetection>) istream)
  "Deserializes a message object of type '<VisionDetection>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionDetection>)))
  "Returns string type for a message object of type '<VisionDetection>"
  "ys_ros_msgs/VisionDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionDetection)))
  "Returns string type for a message object of type 'VisionDetection"
  "ys_ros_msgs/VisionDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionDetection>)))
  "Returns md5sum for a message object of type '<VisionDetection>"
  "95e38df87200e40f187710e349905573")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionDetection)))
  "Returns md5sum for a message object of type 'VisionDetection"
  "95e38df87200e40f187710e349905573")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionDetection>)))
  "Returns full string definition for message of type '<VisionDetection>"
  (cl:format cl:nil "string id     # obstacle name~%~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionDetection)))
  "Returns full string definition for message of type 'VisionDetection"
  (cl:format cl:nil "string id     # obstacle name~%~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionDetection>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionDetection
    (cl:cons ':id (id msg))
    (cl:cons ':pose (pose msg))
))
