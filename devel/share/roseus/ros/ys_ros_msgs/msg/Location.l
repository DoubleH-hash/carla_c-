;; Auto-generated. Do not edit!


(when (boundp 'ys_ros_msgs::Location)
  (if (not (find-package "YS_ROS_MSGS"))
    (make-package "YS_ROS_MSGS"))
  (shadow 'Location (find-package "YS_ROS_MSGS")))
(unless (find-package "YS_ROS_MSGS::LOCATION")
  (make-package "YS_ROS_MSGS::LOCATION"))

(in-package "ROS")
;;//! \htmlinclude Location.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ys_ros_msgs::Location
  :super ros::object
  :slots (_header _ins_time _gau_pos _wgs84_pos _orientation _speed _accelerate _gyro _ins_std_error _ins_data_info _INS_status ))

(defmethod ys_ros_msgs::Location
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ins_time __ins_time) (make-array 2 :initial-element 0 :element-type :integer))
    ((:gau_pos __gau_pos) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:wgs84_pos __wgs84_pos) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:orientation __orientation) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:speed __speed) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:accelerate __accelerate) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:gyro __gyro) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:ins_std_error __ins_std_error) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:ins_data_info __ins_data_info) (make-array 3 :initial-element 0 :element-type :integer))
    ((:INS_status __INS_status) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _ins_time __ins_time)
   (setq _gau_pos __gau_pos)
   (setq _wgs84_pos __wgs84_pos)
   (setq _orientation __orientation)
   (setq _speed __speed)
   (setq _accelerate __accelerate)
   (setq _gyro __gyro)
   (setq _ins_std_error __ins_std_error)
   (setq _ins_data_info __ins_data_info)
   (setq _INS_status (string __INS_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ins_time
   (&optional __ins_time)
   (if __ins_time (setq _ins_time __ins_time)) _ins_time)
  (:gau_pos
   (&optional __gau_pos)
   (if __gau_pos (setq _gau_pos __gau_pos)) _gau_pos)
  (:wgs84_pos
   (&optional __wgs84_pos)
   (if __wgs84_pos (setq _wgs84_pos __wgs84_pos)) _wgs84_pos)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:accelerate
   (&optional __accelerate)
   (if __accelerate (setq _accelerate __accelerate)) _accelerate)
  (:gyro
   (&optional __gyro)
   (if __gyro (setq _gyro __gyro)) _gyro)
  (:ins_std_error
   (&optional __ins_std_error)
   (if __ins_std_error (setq _ins_std_error __ins_std_error)) _ins_std_error)
  (:ins_data_info
   (&optional __ins_data_info)
   (if __ins_data_info (setq _ins_data_info __ins_data_info)) _ins_data_info)
  (:INS_status
   (&optional __INS_status)
   (if __INS_status (setq _INS_status __INS_status)) _INS_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[2] _ins_time
    (* 4    2)
    ;; float64[2] _gau_pos
    (* 8    2)
    ;; float64[3] _wgs84_pos
    (* 8    3)
    ;; float32[3] _orientation
    (* 4    3)
    ;; float32[3] _speed
    (* 4    3)
    ;; float32[3] _accelerate
    (* 4    3)
    ;; float32[3] _gyro
    (* 4    3)
    ;; float32[4] _ins_std_error
    (* 4    4)
    ;; int32[3] _ins_data_info
    (* 4    3)
    ;; string _INS_status
    4 (length _INS_status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[2] _ins_time
     (dotimes (i 2)
       (write-long (elt _ins_time i) s)
       )
     ;; float64[2] _gau_pos
     (dotimes (i 2)
       (sys::poke (elt _gau_pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _wgs84_pos
     (dotimes (i 3)
       (sys::poke (elt _wgs84_pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float32[3] _orientation
     (dotimes (i 3)
       (sys::poke (elt _orientation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _speed
     (dotimes (i 3)
       (sys::poke (elt _speed i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _accelerate
     (dotimes (i 3)
       (sys::poke (elt _accelerate i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _gyro
     (dotimes (i 3)
       (sys::poke (elt _gyro i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[4] _ins_std_error
     (dotimes (i 4)
       (sys::poke (elt _ins_std_error i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32[3] _ins_data_info
     (dotimes (i 3)
       (write-long (elt _ins_data_info i) s)
       )
     ;; string _INS_status
       (write-long (length _INS_status) s) (princ _INS_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32[2] _ins_time
   (dotimes (i (length _ins_time))
     (setf (elt _ins_time i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; float64[2] _gau_pos
   (dotimes (i (length _gau_pos))
     (setf (elt _gau_pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _wgs84_pos
   (dotimes (i (length _wgs84_pos))
     (setf (elt _wgs84_pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float32[3] _orientation
   (dotimes (i (length _orientation))
     (setf (elt _orientation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _speed
   (dotimes (i (length _speed))
     (setf (elt _speed i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _accelerate
   (dotimes (i (length _accelerate))
     (setf (elt _accelerate i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _gyro
   (dotimes (i (length _gyro))
     (setf (elt _gyro i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[4] _ins_std_error
   (dotimes (i (length _ins_std_error))
     (setf (elt _ins_std_error i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; int32[3] _ins_data_info
   (dotimes (i (length _ins_data_info))
     (setf (elt _ins_data_info i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; string _INS_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _INS_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ys_ros_msgs::Location :md5sum-) "2f2d9b0d226b62d4d28d5ba0a19bf067")
(setf (get ys_ros_msgs::Location :datatype-) "ys_ros_msgs/Location")
(setf (get ys_ros_msgs::Location :definition-)
      "Header	   header # ROS time
int32[2]   ins_time # GPS weeks, GPS million seconds
float64[2] gau_pos # Guass frame(m)
float64[3] wgs84_pos # WGS84
float32[3] orientation # Guass frame(deg), X-front, Y-right, Z-down
float32[3] speed # Guass frame(m/s)
float32[3] accelerate # IMU frame(g)
float32[3] gyro # IMU frame(deg/s)
float32[4] ins_std_error # std_lat, std_lon, std_height, std_heading
int32[3]   ins_data_info # ins_num_satellite, gps_delay , wheel_speed
string     INS_status # 0_NONE_,  16_SINGLE_, 17_PSRDIFF_ , 34_NARROW_FLOAT_, 50_NARROW_INT_

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



(provide :ys_ros_msgs/Location "2f2d9b0d226b62d4d28d5ba0a19bf067")


