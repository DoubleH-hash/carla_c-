Header	   header # ROS time
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
