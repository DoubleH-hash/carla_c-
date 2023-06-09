; Auto-generated. Do not edit!


(cl:in-package ys_ros_msgs-msg)


;//! \htmlinclude VehicleLight.msg.html

(cl:defclass <VehicleLight> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (light
    :reader light
    :initarg :light
    :type cl:fixnum
    :initform 0)
   (voice
    :reader voice
    :initarg :voice
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleLight (<VehicleLight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleLight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleLight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ys_ros_msgs-msg:<VehicleLight> is deprecated: use ys_ros_msgs-msg:VehicleLight instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:header-val is deprecated.  Use ys_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'light-val :lambda-list '(m))
(cl:defmethod light-val ((m <VehicleLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:light-val is deprecated.  Use ys_ros_msgs-msg:light instead.")
  (light m))

(cl:ensure-generic-function 'voice-val :lambda-list '(m))
(cl:defmethod voice-val ((m <VehicleLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:voice-val is deprecated.  Use ys_ros_msgs-msg:voice instead.")
  (voice m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleLight>)))
    "Constants for message type '<VehicleLight>"
  '((:CLOSEALL_LIGHT . 0)
    (:BIT_LOW_BEAM . 1)
    (:BIT_HIGH_BEAM . 2)
    (:BIT_LEFT_TURN_LIGHT . 3)
    (:BIT_RIGHT_TURN_LIGHT . 4)
    (:HARZAD_LIGHT . 5)
    (:BIT_POS_LIGHT . 6)
    (:BIT_BRAKE_LIGHT . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleLight)))
    "Constants for message type 'VehicleLight"
  '((:CLOSEALL_LIGHT . 0)
    (:BIT_LOW_BEAM . 1)
    (:BIT_HIGH_BEAM . 2)
    (:BIT_LEFT_TURN_LIGHT . 3)
    (:BIT_RIGHT_TURN_LIGHT . 4)
    (:HARZAD_LIGHT . 5)
    (:BIT_POS_LIGHT . 6)
    (:BIT_BRAKE_LIGHT . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleLight>) ostream)
  "Serializes a message object of type '<VehicleLight>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'voice)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleLight>) istream)
  "Deserializes a message object of type '<VehicleLight>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'light) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'voice) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleLight>)))
  "Returns string type for a message object of type '<VehicleLight>"
  "ys_ros_msgs/VehicleLight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleLight)))
  "Returns string type for a message object of type 'VehicleLight"
  "ys_ros_msgs/VehicleLight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleLight>)))
  "Returns md5sum for a message object of type '<VehicleLight>"
  "2f9cc22bad4d7682f9155deefd937ce7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleLight)))
  "Returns md5sum for a message object of type 'VehicleLight"
  "2f9cc22bad4d7682f9155deefd937ce7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleLight>)))
  "Returns full string definition for message of type '<VehicleLight>"
  (cl:format cl:nil "Header header~%# b'xxxxxxx1 low_beam~%# b'xxxxxx1x high_beam~%# b'xxxxx1xx pos_light~%# b'xxxx1xxx left_turn_light~%# b'xxx1xxxx right_turn_light~%# b'xx1xxxxx brake_light~%int8 light~%~%uint8 CloseAll_Light=0~%uint8 BIT_LOW_BEAM=1~%uint8 BIT_HIGH_BEAM=2~%uint8 BIT_LEFT_TURN_LIGHT=3~%uint8 BIT_RIGHT_TURN_LIGHT=4~%uint8 Harzad_Light=5~%uint8 BIT_POS_LIGHT=6~%uint8 BIT_BRAKE_LIGHT=7~%~%int8 voice~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleLight)))
  "Returns full string definition for message of type 'VehicleLight"
  (cl:format cl:nil "Header header~%# b'xxxxxxx1 low_beam~%# b'xxxxxx1x high_beam~%# b'xxxxx1xx pos_light~%# b'xxxx1xxx left_turn_light~%# b'xxx1xxxx right_turn_light~%# b'xx1xxxxx brake_light~%int8 light~%~%uint8 CloseAll_Light=0~%uint8 BIT_LOW_BEAM=1~%uint8 BIT_HIGH_BEAM=2~%uint8 BIT_LEFT_TURN_LIGHT=3~%uint8 BIT_RIGHT_TURN_LIGHT=4~%uint8 Harzad_Light=5~%uint8 BIT_POS_LIGHT=6~%uint8 BIT_BRAKE_LIGHT=7~%~%int8 voice~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleLight>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleLight>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleLight
    (cl:cons ':header (header msg))
    (cl:cons ':light (light msg))
    (cl:cons ':voice (voice msg))
))
