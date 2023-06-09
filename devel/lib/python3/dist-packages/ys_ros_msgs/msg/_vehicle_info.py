# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ys_ros_msgs/vehicle_info.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class vehicle_info(genpy.Message):
  _md5sum = "117735f8501d259f661f2cb5a60954db"
  _type = "ys_ros_msgs/vehicle_info"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header
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
"""
  __slots__ = ['header','CCU_ShiftLevel_Sts','CCU_P_Sts','CCU_Ignition_Sts','Steering_Wheel_Direction','CCU_Steering_Wheel_Angle','CCU_Vehicle_Speed','CCU_Drive_Mode','Total_Odometer','Left_Front_Wheel_Speed','Left_Back_Wheel_Speed','Right_Front_Wheel_Speed','Right_Back_Wheel_Speed','Wheel_Transform_Vehicle_Speed','Angular_Speed']
  _slot_types = ['std_msgs/Header','uint8','uint8','uint8','uint8','uint16','uint16','uint8','uint32','int16','int16','int16','int16','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,CCU_ShiftLevel_Sts,CCU_P_Sts,CCU_Ignition_Sts,Steering_Wheel_Direction,CCU_Steering_Wheel_Angle,CCU_Vehicle_Speed,CCU_Drive_Mode,Total_Odometer,Left_Front_Wheel_Speed,Left_Back_Wheel_Speed,Right_Front_Wheel_Speed,Right_Back_Wheel_Speed,Wheel_Transform_Vehicle_Speed,Angular_Speed

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(vehicle_info, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.CCU_ShiftLevel_Sts is None:
        self.CCU_ShiftLevel_Sts = 0
      if self.CCU_P_Sts is None:
        self.CCU_P_Sts = 0
      if self.CCU_Ignition_Sts is None:
        self.CCU_Ignition_Sts = 0
      if self.Steering_Wheel_Direction is None:
        self.Steering_Wheel_Direction = 0
      if self.CCU_Steering_Wheel_Angle is None:
        self.CCU_Steering_Wheel_Angle = 0
      if self.CCU_Vehicle_Speed is None:
        self.CCU_Vehicle_Speed = 0
      if self.CCU_Drive_Mode is None:
        self.CCU_Drive_Mode = 0
      if self.Total_Odometer is None:
        self.Total_Odometer = 0
      if self.Left_Front_Wheel_Speed is None:
        self.Left_Front_Wheel_Speed = 0
      if self.Left_Back_Wheel_Speed is None:
        self.Left_Back_Wheel_Speed = 0
      if self.Right_Front_Wheel_Speed is None:
        self.Right_Front_Wheel_Speed = 0
      if self.Right_Back_Wheel_Speed is None:
        self.Right_Back_Wheel_Speed = 0
      if self.Wheel_Transform_Vehicle_Speed is None:
        self.Wheel_Transform_Vehicle_Speed = 0.
      if self.Angular_Speed is None:
        self.Angular_Speed = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.CCU_ShiftLevel_Sts = 0
      self.CCU_P_Sts = 0
      self.CCU_Ignition_Sts = 0
      self.Steering_Wheel_Direction = 0
      self.CCU_Steering_Wheel_Angle = 0
      self.CCU_Vehicle_Speed = 0
      self.CCU_Drive_Mode = 0
      self.Total_Odometer = 0
      self.Left_Front_Wheel_Speed = 0
      self.Left_Back_Wheel_Speed = 0
      self.Right_Front_Wheel_Speed = 0
      self.Right_Back_Wheel_Speed = 0
      self.Wheel_Transform_Vehicle_Speed = 0.
      self.Angular_Speed = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_4B2HBI4h2d().pack(_x.CCU_ShiftLevel_Sts, _x.CCU_P_Sts, _x.CCU_Ignition_Sts, _x.Steering_Wheel_Direction, _x.CCU_Steering_Wheel_Angle, _x.CCU_Vehicle_Speed, _x.CCU_Drive_Mode, _x.Total_Odometer, _x.Left_Front_Wheel_Speed, _x.Left_Back_Wheel_Speed, _x.Right_Front_Wheel_Speed, _x.Right_Back_Wheel_Speed, _x.Wheel_Transform_Vehicle_Speed, _x.Angular_Speed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 37
      (_x.CCU_ShiftLevel_Sts, _x.CCU_P_Sts, _x.CCU_Ignition_Sts, _x.Steering_Wheel_Direction, _x.CCU_Steering_Wheel_Angle, _x.CCU_Vehicle_Speed, _x.CCU_Drive_Mode, _x.Total_Odometer, _x.Left_Front_Wheel_Speed, _x.Left_Back_Wheel_Speed, _x.Right_Front_Wheel_Speed, _x.Right_Back_Wheel_Speed, _x.Wheel_Transform_Vehicle_Speed, _x.Angular_Speed,) = _get_struct_4B2HBI4h2d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_4B2HBI4h2d().pack(_x.CCU_ShiftLevel_Sts, _x.CCU_P_Sts, _x.CCU_Ignition_Sts, _x.Steering_Wheel_Direction, _x.CCU_Steering_Wheel_Angle, _x.CCU_Vehicle_Speed, _x.CCU_Drive_Mode, _x.Total_Odometer, _x.Left_Front_Wheel_Speed, _x.Left_Back_Wheel_Speed, _x.Right_Front_Wheel_Speed, _x.Right_Back_Wheel_Speed, _x.Wheel_Transform_Vehicle_Speed, _x.Angular_Speed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 37
      (_x.CCU_ShiftLevel_Sts, _x.CCU_P_Sts, _x.CCU_Ignition_Sts, _x.Steering_Wheel_Direction, _x.CCU_Steering_Wheel_Angle, _x.CCU_Vehicle_Speed, _x.CCU_Drive_Mode, _x.Total_Odometer, _x.Left_Front_Wheel_Speed, _x.Left_Back_Wheel_Speed, _x.Right_Front_Wheel_Speed, _x.Right_Back_Wheel_Speed, _x.Wheel_Transform_Vehicle_Speed, _x.Angular_Speed,) = _get_struct_4B2HBI4h2d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_4B2HBI4h2d = None
def _get_struct_4B2HBI4h2d():
    global _struct_4B2HBI4h2d
    if _struct_4B2HBI4h2d is None:
        _struct_4B2HBI4h2d = struct.Struct("<4B2HBI4h2d")
    return _struct_4B2HBI4h2d
