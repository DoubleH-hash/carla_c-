;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::vehicle_info)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'vehicle_info (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::VEHICLE_INFO")
  (make-package "YS_ROS_MSGS::VEHICLE_INFO"))

(in-package "ROS")
;;//! \htmlinclude vehicle_info.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ys_ros_msgs::vehicle_info
  :super ros::object
  :slots (_header _CCU_ShiftLevel_Sts _CCU_P_Sts _CCU_Ignition_Sts _Steering_Wheel_Direction _CCU_Steering_Wheel_Angle _CCU_Vehicle_Speed _CCU_Drive_Mode _Total_Odometer _Left_Front_Wheel_Speed _Left_Back_Wheel_Speed _Right_Front_Wheel_Speed _Right_Back_Wheel_Speed _Wheel_Transform_Vehicle_Speed _Angular_Speed ))

(defmethod ys_ros_msgs::vehicle_info
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:CCU_ShiftLevel_Sts __CCU_ShiftLevel_Sts) 0)
    ((:CCU_P_Sts __CCU_P_Sts) 0)
    ((:CCU_Ignition_Sts __CCU_Ignition_Sts) 0)
    ((:Steering_Wheel_Direction __Steering_Wheel_Direction) 0)
    ((:CCU_Steering_Wheel_Angle __CCU_Steering_Wheel_Angle) 0)
    ((:CCU_Vehicle_Speed __CCU_Vehicle_Speed) 0)
    ((:CCU_Drive_Mode __CCU_Drive_Mode) 0)
    ((:Total_Odometer __Total_Odometer) 0)
    ((:Left_Front_Wheel_Speed __Left_Front_Wheel_Speed) 0)
    ((:Left_Back_Wheel_Speed __Left_Back_Wheel_Speed) 0)
    ((:Right_Front_Wheel_Speed __Right_Front_Wheel_Speed) 0)
    ((:Right_Back_Wheel_Speed __Right_Back_Wheel_Speed) 0)
    ((:Wheel_Transform_Vehicle_Speed __Wheel_Transform_Vehicle_Speed) 0.0)
    ((:Angular_Speed __Angular_Speed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _CCU_ShiftLevel_Sts (round __CCU_ShiftLevel_Sts))
   (setq _CCU_P_Sts (round __CCU_P_Sts))
   (setq _CCU_Ignition_Sts (round __CCU_Ignition_Sts))
   (setq _Steering_Wheel_Direction (round __Steering_Wheel_Direction))
   (setq _CCU_Steering_Wheel_Angle (round __CCU_Steering_Wheel_Angle))
   (setq _CCU_Vehicle_Speed (round __CCU_Vehicle_Speed))
   (setq _CCU_Drive_Mode (round __CCU_Drive_Mode))
   (setq _Total_Odometer (round __Total_Odometer))
   (setq _Left_Front_Wheel_Speed (round __Left_Front_Wheel_Speed))
   (setq _Left_Back_Wheel_Speed (round __Left_Back_Wheel_Speed))
   (setq _Right_Front_Wheel_Speed (round __Right_Front_Wheel_Speed))
   (setq _Right_Back_Wheel_Speed (round __Right_Back_Wheel_Speed))
   (setq _Wheel_Transform_Vehicle_Speed (float __Wheel_Transform_Vehicle_Speed))
   (setq _Angular_Speed (float __Angular_Speed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:CCU_ShiftLevel_Sts
   (&optional __CCU_ShiftLevel_Sts)
   (if __CCU_ShiftLevel_Sts (setq _CCU_ShiftLevel_Sts __CCU_ShiftLevel_Sts)) _CCU_ShiftLevel_Sts)
  (:CCU_P_Sts
   (&optional __CCU_P_Sts)
   (if __CCU_P_Sts (setq _CCU_P_Sts __CCU_P_Sts)) _CCU_P_Sts)
  (:CCU_Ignition_Sts
   (&optional __CCU_Ignition_Sts)
   (if __CCU_Ignition_Sts (setq _CCU_Ignition_Sts __CCU_Ignition_Sts)) _CCU_Ignition_Sts)
  (:Steering_Wheel_Direction
   (&optional __Steering_Wheel_Direction)
   (if __Steering_Wheel_Direction (setq _Steering_Wheel_Direction __Steering_Wheel_Direction)) _Steering_Wheel_Direction)
  (:CCU_Steering_Wheel_Angle
   (&optional __CCU_Steering_Wheel_Angle)
   (if __CCU_Steering_Wheel_Angle (setq _CCU_Steering_Wheel_Angle __CCU_Steering_Wheel_Angle)) _CCU_Steering_Wheel_Angle)
  (:CCU_Vehicle_Speed
   (&optional __CCU_Vehicle_Speed)
   (if __CCU_Vehicle_Speed (setq _CCU_Vehicle_Speed __CCU_Vehicle_Speed)) _CCU_Vehicle_Speed)
  (:CCU_Drive_Mode
   (&optional __CCU_Drive_Mode)
   (if __CCU_Drive_Mode (setq _CCU_Drive_Mode __CCU_Drive_Mode)) _CCU_Drive_Mode)
  (:Total_Odometer
   (&optional __Total_Odometer)
   (if __Total_Odometer (setq _Total_Odometer __Total_Odometer)) _Total_Odometer)
  (:Left_Front_Wheel_Speed
   (&optional __Left_Front_Wheel_Speed)
   (if __Left_Front_Wheel_Speed (setq _Left_Front_Wheel_Speed __Left_Front_Wheel_Speed)) _Left_Front_Wheel_Speed)
  (:Left_Back_Wheel_Speed
   (&optional __Left_Back_Wheel_Speed)
   (if __Left_Back_Wheel_Speed (setq _Left_Back_Wheel_Speed __Left_Back_Wheel_Speed)) _Left_Back_Wheel_Speed)
  (:Right_Front_Wheel_Speed
   (&optional __Right_Front_Wheel_Speed)
   (if __Right_Front_Wheel_Speed (setq _Right_Front_Wheel_Speed __Right_Front_Wheel_Speed)) _Right_Front_Wheel_Speed)
  (:Right_Back_Wheel_Speed
   (&optional __Right_Back_Wheel_Speed)
   (if __Right_Back_Wheel_Speed (setq _Right_Back_Wheel_Speed __Right_Back_Wheel_Speed)) _Right_Back_Wheel_Speed)
  (:Wheel_Transform_Vehicle_Speed
   (&optional __Wheel_Transform_Vehicle_Speed)
   (if __Wheel_Transform_Vehicle_Speed (setq _Wheel_Transform_Vehicle_Speed __Wheel_Transform_Vehicle_Speed)) _Wheel_Transform_Vehicle_Speed)
  (:Angular_Speed
   (&optional __Angular_Speed)
   (if __Angular_Speed (setq _Angular_Speed __Angular_Speed)) _Angular_Speed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _CCU_ShiftLevel_Sts
    1
    ;; uint8 _CCU_P_Sts
    1
    ;; uint8 _CCU_Ignition_Sts
    1
    ;; uint8 _Steering_Wheel_Direction
    1
    ;; uint16 _CCU_Steering_Wheel_Angle
    2
    ;; uint16 _CCU_Vehicle_Speed
    2
    ;; uint8 _CCU_Drive_Mode
    1
    ;; uint32 _Total_Odometer
    4
    ;; int16 _Left_Front_Wheel_Speed
    2
    ;; int16 _Left_Back_Wheel_Speed
    2
    ;; int16 _Right_Front_Wheel_Speed
    2
    ;; int16 _Right_Back_Wheel_Speed
    2
    ;; float64 _Wheel_Transform_Vehicle_Speed
    8
    ;; float64 _Angular_Speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _CCU_ShiftLevel_Sts
       (write-byte _CCU_ShiftLevel_Sts s)
     ;; uint8 _CCU_P_Sts
       (write-byte _CCU_P_Sts s)
     ;; uint8 _CCU_Ignition_Sts
       (write-byte _CCU_Ignition_Sts s)
     ;; uint8 _Steering_Wheel_Direction
       (write-byte _Steering_Wheel_Direction s)
     ;; uint16 _CCU_Steering_Wheel_Angle
       (write-word _CCU_Steering_Wheel_Angle s)
     ;; uint16 _CCU_Vehicle_Speed
       (write-word _CCU_Vehicle_Speed s)
     ;; uint8 _CCU_Drive_Mode
       (write-byte _CCU_Drive_Mode s)
     ;; uint32 _Total_Odometer
       (write-long _Total_Odometer s)
     ;; int16 _Left_Front_Wheel_Speed
       (write-word _Left_Front_Wheel_Speed s)
     ;; int16 _Left_Back_Wheel_Speed
       (write-word _Left_Back_Wheel_Speed s)
     ;; int16 _Right_Front_Wheel_Speed
       (write-word _Right_Front_Wheel_Speed s)
     ;; int16 _Right_Back_Wheel_Speed
       (write-word _Right_Back_Wheel_Speed s)
     ;; float64 _Wheel_Transform_Vehicle_Speed
       (sys::poke _Wheel_Transform_Vehicle_Speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Angular_Speed
       (sys::poke _Angular_Speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _CCU_ShiftLevel_Sts
     (setq _CCU_ShiftLevel_Sts (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _CCU_P_Sts
     (setq _CCU_P_Sts (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _CCU_Ignition_Sts
     (setq _CCU_Ignition_Sts (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Steering_Wheel_Direction
     (setq _Steering_Wheel_Direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _CCU_Steering_Wheel_Angle
     (setq _CCU_Steering_Wheel_Angle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _CCU_Vehicle_Speed
     (setq _CCU_Vehicle_Speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _CCU_Drive_Mode
     (setq _CCU_Drive_Mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _Total_Odometer
     (setq _Total_Odometer (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _Left_Front_Wheel_Speed
     (setq _Left_Front_Wheel_Speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Left_Back_Wheel_Speed
     (setq _Left_Back_Wheel_Speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Right_Front_Wheel_Speed
     (setq _Right_Front_Wheel_Speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Right_Back_Wheel_Speed
     (setq _Right_Back_Wheel_Speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _Wheel_Transform_Vehicle_Speed
     (setq _Wheel_Transform_Vehicle_Speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Angular_Speed
     (setq _Angular_Speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ys_ros_msgs::vehicle_info :md5sum-) "117735f8501d259f661f2cb5a60954db")
(setf (get ys_ros_msgs::vehicle_info :datatype-) "ys_ros_msgs/vehicle_info")
(setf (get ys_ros_msgs::vehicle_info :definition-)
      "Header header
uint8 CCU_ShiftLevel_Sts   # 档位  P=1（停车） R=2 倒档 N=3（空挡）  D=4（前进）
uint8 CCU_P_Sts   # P档状态
uint8 CCU_Ignition_Sts  # 点火开关状态
uint8 Steering_Wheel_Direction  # 方向盘方向
uint16 CCU_Steering_Wheel_Angle  # 转向角度
uint16 CCU_Vehicle_Speed  # 实时车速
uint8 CCU_Drive_Mode  # 驾驶模式
uint32 Total_Odometer  # 累计里程
int16 Left_Front_Wheel_Speed
int16 Left_Back_Wheel_Speed
int16 Right_Front_Wheel_Speed
int16 Right_Back_Wheel_Speed
float64 Wheel_Transform_Vehicle_Speed
float64 Angular_Speed


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



(provide :ys_ros_msgs/vehicle_info "117735f8501d259f661f2cb5a60954db")


