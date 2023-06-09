Header header
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

