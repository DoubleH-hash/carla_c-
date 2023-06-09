;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::VehicleLight)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'VehicleLight (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::VEHICLELIGHT")
  (make-package "YS_ROS_MSGS::VEHICLELIGHT"))

(in-package "ROS")
;;//! \htmlinclude VehicleLight.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CLOSEALL_LIGHT*" (find-package "YS_ROS_MSGS::VEHICLELIGHT"))
(shadow '*CLOSEALL_LIGHT* (find-package "YS_ROS_MSGS::VEHICLELIGHT"))
(defconstant ys_ros_msgs::VehicleLight::*CLOSEALL_LIGHT* 0)
(intern "*BIT_LOW_BEAM*" (find-package "YS_ROS_MSGS::VEHICLELIGHT"))
(shadow '*BIT_LOW_BEAM* (find-package "YS_ROS_MSGS::VEHICLELIGHT"))
(defconstant ys_ros_msgs::VehicleLight::*BIT_LOW_BEAM* 1)
(intern "*BIT_HIGH_BEAM*" (find-package "YS_ROS_MSGS::VEHICLELIGHT"))
(shadow '*BIT_HIGH_BEAM* (find-package "YS_ROS_MSGS::VEHICLELIGHT"))
(defconstant ys_ros_msgs::VehicleLight::*BIT_HIGH_BEAM* 2)
(intern "*BIT_LEFT_TURN_LIGHT*" (find-package "YS_ROS_MSGS::VEHICLELIGHT"))
(shadow '*BIT_LEFT_TURN_LIGHT* (find-package "YS_ROS_MSGS::VEHICLELIGHT"))
(defconstant ys_ros_msgs::VehicleLight::*BIT_LEFT_TURN_LIGHT* 3)
(intern "*BIT_RIGHT_TURN_LIGHT*" (find-package "YS_ROS_MSGS::VEHICLELIGHT"))
(shadow '*BIT_RIGHT_TURN_LIGHT* (find-package "YS_ROS_MSGS::VEHICLELIGHT"))
(defconstant ys_ros_msgs::VehicleLight::*BIT_RIGHT_TURN_LIGHT* 4)
(intern "*HARZAD_LIGHT*" (find-package "YS_ROS_MSGS::VEHICLELIGHT"))
(shadow '*HARZAD_LIGHT* (find-package "YS_ROS_MSGS::VEHICLELIGHT"))
(defconstant ys_ros_msgs::VehicleLight::*HARZAD_LIGHT* 5)
(intern "*BIT_POS_LIGHT*" (find-package "YS_ROS_MSGS::VEHICLELIGHT"))
(shadow '*BIT_POS_LIGHT* (find-package "YS_ROS_MSGS::VEHICLELIGHT"))
(defconstant ys_ros_msgs::VehicleLight::*BIT_POS_LIGHT* 6)
(intern "*BIT_BRAKE_LIGHT*" (find-package "YS_ROS_MSGS::VEHICLELIGHT"))
(shadow '*BIT_BRAKE_LIGHT* (find-package "YS_ROS_MSGS::VEHICLELIGHT"))
(defconstant ys_ros_msgs::VehicleLight::*BIT_BRAKE_LIGHT* 7)

(defun ys_ros_msgs::VehicleLight-to-symbol (const)
  (cond
        ((= const 0) 'ys_ros_msgs::VehicleLight::*CloseAll_Light*)
        ((= const 1) 'ys_ros_msgs::VehicleLight::*BIT_LOW_BEAM*)
        ((= const 2) 'ys_ros_msgs::VehicleLight::*BIT_HIGH_BEAM*)
        ((= const 3) 'ys_ros_msgs::VehicleLight::*BIT_LEFT_TURN_LIGHT*)
        ((= const 4) 'ys_ros_msgs::VehicleLight::*BIT_RIGHT_TURN_LIGHT*)
        ((= const 5) 'ys_ros_msgs::VehicleLight::*Harzad_Light*)
        ((= const 6) 'ys_ros_msgs::VehicleLight::*BIT_POS_LIGHT*)
        ((= const 7) 'ys_ros_msgs::VehicleLight::*BIT_BRAKE_LIGHT*)
        (t nil)))

(defclass ys_ros_msgs::VehicleLight
  :super ros::object
  :slots (_header _light _voice ))

(defmethod ys_ros_msgs::VehicleLight
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:light __light) 0)
    ((:voice __voice) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _light (round __light))
   (setq _voice (round __voice))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:light
   (&optional __light)
   (if __light (setq _light __light)) _light)
  (:voice
   (&optional __voice)
   (if __voice (setq _voice __voice)) _voice)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _light
    1
    ;; int8 _voice
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _light
       (write-byte _light s)
     ;; int8 _voice
       (write-byte _voice s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _light
     (setq _light (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _light 127) (setq _light (- _light 256)))
   ;; int8 _voice
     (setq _voice (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _voice 127) (setq _voice (- _voice 256)))
   ;;
   self)
  )

(setf (get ys_ros_msgs::VehicleLight :md5sum-) "2f9cc22bad4d7682f9155deefd937ce7")
(setf (get ys_ros_msgs::VehicleLight :datatype-) "ys_ros_msgs/VehicleLight")
(setf (get ys_ros_msgs::VehicleLight :definition-)
      "Header header
# b'xxxxxxx1 low_beam
# b'xxxxxx1x high_beam
# b'xxxxx1xx pos_light
# b'xxxx1xxx left_turn_light
# b'xxx1xxxx right_turn_light
# b'xx1xxxxx brake_light
int8 light

uint8 CloseAll_Light=0
uint8 BIT_LOW_BEAM=1
uint8 BIT_HIGH_BEAM=2
uint8 BIT_LEFT_TURN_LIGHT=3
uint8 BIT_RIGHT_TURN_LIGHT=4
uint8 Harzad_Light=5
uint8 BIT_POS_LIGHT=6
uint8 BIT_BRAKE_LIGHT=7

int8 voice

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



(provide :ys_ros_msgs/VehicleLight "2f9cc22bad4d7682f9155deefd937ce7")


