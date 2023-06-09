; Auto-generated. Do not edit!


(cl:in-package ys_ros_msgs-msg)


;//! \htmlinclude vehicle_info.msg.html

(cl:defclass <vehicle_info> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (CCU_ShiftLevel_Sts
    :reader CCU_ShiftLevel_Sts
    :initarg :CCU_ShiftLevel_Sts
    :type cl:fixnum
    :initform 0)
   (CCU_P_Sts
    :reader CCU_P_Sts
    :initarg :CCU_P_Sts
    :type cl:fixnum
    :initform 0)
   (CCU_Ignition_Sts
    :reader CCU_Ignition_Sts
    :initarg :CCU_Ignition_Sts
    :type cl:fixnum
    :initform 0)
   (Steering_Wheel_Direction
    :reader Steering_Wheel_Direction
    :initarg :Steering_Wheel_Direction
    :type cl:fixnum
    :initform 0)
   (CCU_Steering_Wheel_Angle
    :reader CCU_Steering_Wheel_Angle
    :initarg :CCU_Steering_Wheel_Angle
    :type cl:fixnum
    :initform 0)
   (CCU_Vehicle_Speed
    :reader CCU_Vehicle_Speed
    :initarg :CCU_Vehicle_Speed
    :type cl:fixnum
    :initform 0)
   (CCU_Drive_Mode
    :reader CCU_Drive_Mode
    :initarg :CCU_Drive_Mode
    :type cl:fixnum
    :initform 0)
   (Total_Odometer
    :reader Total_Odometer
    :initarg :Total_Odometer
    :type cl:integer
    :initform 0)
   (Left_Front_Wheel_Speed
    :reader Left_Front_Wheel_Speed
    :initarg :Left_Front_Wheel_Speed
    :type cl:fixnum
    :initform 0)
   (Left_Back_Wheel_Speed
    :reader Left_Back_Wheel_Speed
    :initarg :Left_Back_Wheel_Speed
    :type cl:fixnum
    :initform 0)
   (Right_Front_Wheel_Speed
    :reader Right_Front_Wheel_Speed
    :initarg :Right_Front_Wheel_Speed
    :type cl:fixnum
    :initform 0)
   (Right_Back_Wheel_Speed
    :reader Right_Back_Wheel_Speed
    :initarg :Right_Back_Wheel_Speed
    :type cl:fixnum
    :initform 0)
   (Wheel_Transform_Vehicle_Speed
    :reader Wheel_Transform_Vehicle_Speed
    :initarg :Wheel_Transform_Vehicle_Speed
    :type cl:float
    :initform 0.0)
   (Angular_Speed
    :reader Angular_Speed
    :initarg :Angular_Speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass vehicle_info (<vehicle_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vehicle_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vehicle_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ys_ros_msgs-msg:<vehicle_info> is deprecated: use ys_ros_msgs-msg:vehicle_info instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <vehicle_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:header-val is deprecated.  Use ys_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'CCU_ShiftLevel_Sts-val :lambda-list '(m))
(cl:defmethod CCU_ShiftLevel_Sts-val ((m <vehicle_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:CCU_ShiftLevel_Sts-val is deprecated.  Use ys_ros_msgs-msg:CCU_ShiftLevel_Sts instead.")
  (CCU_ShiftLevel_Sts m))

(cl:ensure-generic-function 'CCU_P_Sts-val :lambda-list '(m))
(cl:defmethod CCU_P_Sts-val ((m <vehicle_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:CCU_P_Sts-val is deprecated.  Use ys_ros_msgs-msg:CCU_P_Sts instead.")
  (CCU_P_Sts m))

(cl:ensure-generic-function 'CCU_Ignition_Sts-val :lambda-list '(m))
(cl:defmethod CCU_Ignition_Sts-val ((m <vehicle_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:CCU_Ignition_Sts-val is deprecated.  Use ys_ros_msgs-msg:CCU_Ignition_Sts instead.")
  (CCU_Ignition_Sts m))

(cl:ensure-generic-function 'Steering_Wheel_Direction-val :lambda-list '(m))
(cl:defmethod Steering_Wheel_Direction-val ((m <vehicle_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:Steering_Wheel_Direction-val is deprecated.  Use ys_ros_msgs-msg:Steering_Wheel_Direction instead.")
  (Steering_Wheel_Direction m))

(cl:ensure-generic-function 'CCU_Steering_Wheel_Angle-val :lambda-list '(m))
(cl:defmethod CCU_Steering_Wheel_Angle-val ((m <vehicle_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:CCU_Steering_Wheel_Angle-val is deprecated.  Use ys_ros_msgs-msg:CCU_Steering_Wheel_Angle instead.")
  (CCU_Steering_Wheel_Angle m))

(cl:ensure-generic-function 'CCU_Vehicle_Speed-val :lambda-list '(m))
(cl:defmethod CCU_Vehicle_Speed-val ((m <vehicle_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:CCU_Vehicle_Speed-val is deprecated.  Use ys_ros_msgs-msg:CCU_Vehicle_Speed instead.")
  (CCU_Vehicle_Speed m))

(cl:ensure-generic-function 'CCU_Drive_Mode-val :lambda-list '(m))
(cl:defmethod CCU_Drive_Mode-val ((m <vehicle_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:CCU_Drive_Mode-val is deprecated.  Use ys_ros_msgs-msg:CCU_Drive_Mode instead.")
  (CCU_Drive_Mode m))

(cl:ensure-generic-function 'Total_Odometer-val :lambda-list '(m))
(cl:defmethod Total_Odometer-val ((m <vehicle_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:Total_Odometer-val is deprecated.  Use ys_ros_msgs-msg:Total_Odometer instead.")
  (Total_Odometer m))

(cl:ensure-generic-function 'Left_Front_Wheel_Speed-val :lambda-list '(m))
(cl:defmethod Left_Front_Wheel_Speed-val ((m <vehicle_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:Left_Front_Wheel_Speed-val is deprecated.  Use ys_ros_msgs-msg:Left_Front_Wheel_Speed instead.")
  (Left_Front_Wheel_Speed m))

(cl:ensure-generic-function 'Left_Back_Wheel_Speed-val :lambda-list '(m))
(cl:defmethod Left_Back_Wheel_Speed-val ((m <vehicle_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:Left_Back_Wheel_Speed-val is deprecated.  Use ys_ros_msgs-msg:Left_Back_Wheel_Speed instead.")
  (Left_Back_Wheel_Speed m))

(cl:ensure-generic-function 'Right_Front_Wheel_Speed-val :lambda-list '(m))
(cl:defmethod Right_Front_Wheel_Speed-val ((m <vehicle_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:Right_Front_Wheel_Speed-val is deprecated.  Use ys_ros_msgs-msg:Right_Front_Wheel_Speed instead.")
  (Right_Front_Wheel_Speed m))

(cl:ensure-generic-function 'Right_Back_Wheel_Speed-val :lambda-list '(m))
(cl:defmethod Right_Back_Wheel_Speed-val ((m <vehicle_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:Right_Back_Wheel_Speed-val is deprecated.  Use ys_ros_msgs-msg:Right_Back_Wheel_Speed instead.")
  (Right_Back_Wheel_Speed m))

(cl:ensure-generic-function 'Wheel_Transform_Vehicle_Speed-val :lambda-list '(m))
(cl:defmethod Wheel_Transform_Vehicle_Speed-val ((m <vehicle_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:Wheel_Transform_Vehicle_Speed-val is deprecated.  Use ys_ros_msgs-msg:Wheel_Transform_Vehicle_Speed instead.")
  (Wheel_Transform_Vehicle_Speed m))

(cl:ensure-generic-function 'Angular_Speed-val :lambda-list '(m))
(cl:defmethod Angular_Speed-val ((m <vehicle_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ys_ros_msgs-msg:Angular_Speed-val is deprecated.  Use ys_ros_msgs-msg:Angular_Speed instead.")
  (Angular_Speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vehicle_info>) ostream)
  "Serializes a message object of type '<vehicle_info>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CCU_ShiftLevel_Sts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CCU_P_Sts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CCU_Ignition_Sts)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Steering_Wheel_Direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CCU_Steering_Wheel_Angle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'CCU_Steering_Wheel_Angle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CCU_Vehicle_Speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'CCU_Vehicle_Speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CCU_Drive_Mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Total_Odometer)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Total_Odometer)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Total_Odometer)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Total_Odometer)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Left_Front_Wheel_Speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Left_Back_Wheel_Speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Right_Front_Wheel_Speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Right_Back_Wheel_Speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Wheel_Transform_Vehicle_Speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Angular_Speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vehicle_info>) istream)
  "Deserializes a message object of type '<vehicle_info>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CCU_ShiftLevel_Sts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CCU_P_Sts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CCU_Ignition_Sts)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Steering_Wheel_Direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CCU_Steering_Wheel_Angle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'CCU_Steering_Wheel_Angle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CCU_Vehicle_Speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'CCU_Vehicle_Speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CCU_Drive_Mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Total_Odometer)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Total_Odometer)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Total_Odometer)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Total_Odometer)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Left_Front_Wheel_Speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Left_Back_Wheel_Speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Right_Front_Wheel_Speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Right_Back_Wheel_Speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Wheel_Transform_Vehicle_Speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Angular_Speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vehicle_info>)))
  "Returns string type for a message object of type '<vehicle_info>"
  "ys_ros_msgs/vehicle_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vehicle_info)))
  "Returns string type for a message object of type 'vehicle_info"
  "ys_ros_msgs/vehicle_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vehicle_info>)))
  "Returns md5sum for a message object of type '<vehicle_info>"
  "117735f8501d259f661f2cb5a60954db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vehicle_info)))
  "Returns md5sum for a message object of type 'vehicle_info"
  "117735f8501d259f661f2cb5a60954db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vehicle_info>)))
  "Returns full string definition for message of type '<vehicle_info>"
  (cl:format cl:nil "Header header~%uint8 CCU_ShiftLevel_Sts   # 档位  P=1（停车） R=2 倒档 N=3（空挡）  D=4（前进）~%uint8 CCU_P_Sts   # P档状态~%uint8 CCU_Ignition_Sts  # 点火开关状态~%uint8 Steering_Wheel_Direction  # 方向盘方向~%uint16 CCU_Steering_Wheel_Angle  # 转向角度~%uint16 CCU_Vehicle_Speed  # 实时车速~%uint8 CCU_Drive_Mode  # 驾驶模式~%uint32 Total_Odometer  # 累计里程~%int16 Left_Front_Wheel_Speed~%int16 Left_Back_Wheel_Speed~%int16 Right_Front_Wheel_Speed~%int16 Right_Back_Wheel_Speed~%float64 Wheel_Transform_Vehicle_Speed~%float64 Angular_Speed~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vehicle_info)))
  "Returns full string definition for message of type 'vehicle_info"
  (cl:format cl:nil "Header header~%uint8 CCU_ShiftLevel_Sts   # 档位  P=1（停车） R=2 倒档 N=3（空挡）  D=4（前进）~%uint8 CCU_P_Sts   # P档状态~%uint8 CCU_Ignition_Sts  # 点火开关状态~%uint8 Steering_Wheel_Direction  # 方向盘方向~%uint16 CCU_Steering_Wheel_Angle  # 转向角度~%uint16 CCU_Vehicle_Speed  # 实时车速~%uint8 CCU_Drive_Mode  # 驾驶模式~%uint32 Total_Odometer  # 累计里程~%int16 Left_Front_Wheel_Speed~%int16 Left_Back_Wheel_Speed~%int16 Right_Front_Wheel_Speed~%int16 Right_Back_Wheel_Speed~%float64 Wheel_Transform_Vehicle_Speed~%float64 Angular_Speed~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vehicle_info>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     2
     2
     1
     4
     2
     2
     2
     2
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vehicle_info>))
  "Converts a ROS message object to a list"
  (cl:list 'vehicle_info
    (cl:cons ':header (header msg))
    (cl:cons ':CCU_ShiftLevel_Sts (CCU_ShiftLevel_Sts msg))
    (cl:cons ':CCU_P_Sts (CCU_P_Sts msg))
    (cl:cons ':CCU_Ignition_Sts (CCU_Ignition_Sts msg))
    (cl:cons ':Steering_Wheel_Direction (Steering_Wheel_Direction msg))
    (cl:cons ':CCU_Steering_Wheel_Angle (CCU_Steering_Wheel_Angle msg))
    (cl:cons ':CCU_Vehicle_Speed (CCU_Vehicle_Speed msg))
    (cl:cons ':CCU_Drive_Mode (CCU_Drive_Mode msg))
    (cl:cons ':Total_Odometer (Total_Odometer msg))
    (cl:cons ':Left_Front_Wheel_Speed (Left_Front_Wheel_Speed msg))
    (cl:cons ':Left_Back_Wheel_Speed (Left_Back_Wheel_Speed msg))
    (cl:cons ':Right_Front_Wheel_Speed (Right_Front_Wheel_Speed msg))
    (cl:cons ':Right_Back_Wheel_Speed (Right_Back_Wheel_Speed msg))
    (cl:cons ':Wheel_Transform_Vehicle_Speed (Wheel_Transform_Vehicle_Speed msg))
    (cl:cons ':Angular_Speed (Angular_Speed msg))
))
