// Auto-generated. Do not edit!

// (in-package ys_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class vehicle_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.CCU_ShiftLevel_Sts = null;
      this.CCU_P_Sts = null;
      this.CCU_Ignition_Sts = null;
      this.Steering_Wheel_Direction = null;
      this.CCU_Steering_Wheel_Angle = null;
      this.CCU_Vehicle_Speed = null;
      this.CCU_Drive_Mode = null;
      this.Total_Odometer = null;
      this.Left_Front_Wheel_Speed = null;
      this.Left_Back_Wheel_Speed = null;
      this.Right_Front_Wheel_Speed = null;
      this.Right_Back_Wheel_Speed = null;
      this.Wheel_Transform_Vehicle_Speed = null;
      this.Angular_Speed = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('CCU_ShiftLevel_Sts')) {
        this.CCU_ShiftLevel_Sts = initObj.CCU_ShiftLevel_Sts
      }
      else {
        this.CCU_ShiftLevel_Sts = 0;
      }
      if (initObj.hasOwnProperty('CCU_P_Sts')) {
        this.CCU_P_Sts = initObj.CCU_P_Sts
      }
      else {
        this.CCU_P_Sts = 0;
      }
      if (initObj.hasOwnProperty('CCU_Ignition_Sts')) {
        this.CCU_Ignition_Sts = initObj.CCU_Ignition_Sts
      }
      else {
        this.CCU_Ignition_Sts = 0;
      }
      if (initObj.hasOwnProperty('Steering_Wheel_Direction')) {
        this.Steering_Wheel_Direction = initObj.Steering_Wheel_Direction
      }
      else {
        this.Steering_Wheel_Direction = 0;
      }
      if (initObj.hasOwnProperty('CCU_Steering_Wheel_Angle')) {
        this.CCU_Steering_Wheel_Angle = initObj.CCU_Steering_Wheel_Angle
      }
      else {
        this.CCU_Steering_Wheel_Angle = 0;
      }
      if (initObj.hasOwnProperty('CCU_Vehicle_Speed')) {
        this.CCU_Vehicle_Speed = initObj.CCU_Vehicle_Speed
      }
      else {
        this.CCU_Vehicle_Speed = 0;
      }
      if (initObj.hasOwnProperty('CCU_Drive_Mode')) {
        this.CCU_Drive_Mode = initObj.CCU_Drive_Mode
      }
      else {
        this.CCU_Drive_Mode = 0;
      }
      if (initObj.hasOwnProperty('Total_Odometer')) {
        this.Total_Odometer = initObj.Total_Odometer
      }
      else {
        this.Total_Odometer = 0;
      }
      if (initObj.hasOwnProperty('Left_Front_Wheel_Speed')) {
        this.Left_Front_Wheel_Speed = initObj.Left_Front_Wheel_Speed
      }
      else {
        this.Left_Front_Wheel_Speed = 0;
      }
      if (initObj.hasOwnProperty('Left_Back_Wheel_Speed')) {
        this.Left_Back_Wheel_Speed = initObj.Left_Back_Wheel_Speed
      }
      else {
        this.Left_Back_Wheel_Speed = 0;
      }
      if (initObj.hasOwnProperty('Right_Front_Wheel_Speed')) {
        this.Right_Front_Wheel_Speed = initObj.Right_Front_Wheel_Speed
      }
      else {
        this.Right_Front_Wheel_Speed = 0;
      }
      if (initObj.hasOwnProperty('Right_Back_Wheel_Speed')) {
        this.Right_Back_Wheel_Speed = initObj.Right_Back_Wheel_Speed
      }
      else {
        this.Right_Back_Wheel_Speed = 0;
      }
      if (initObj.hasOwnProperty('Wheel_Transform_Vehicle_Speed')) {
        this.Wheel_Transform_Vehicle_Speed = initObj.Wheel_Transform_Vehicle_Speed
      }
      else {
        this.Wheel_Transform_Vehicle_Speed = 0.0;
      }
      if (initObj.hasOwnProperty('Angular_Speed')) {
        this.Angular_Speed = initObj.Angular_Speed
      }
      else {
        this.Angular_Speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type vehicle_info
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [CCU_ShiftLevel_Sts]
    bufferOffset = _serializer.uint8(obj.CCU_ShiftLevel_Sts, buffer, bufferOffset);
    // Serialize message field [CCU_P_Sts]
    bufferOffset = _serializer.uint8(obj.CCU_P_Sts, buffer, bufferOffset);
    // Serialize message field [CCU_Ignition_Sts]
    bufferOffset = _serializer.uint8(obj.CCU_Ignition_Sts, buffer, bufferOffset);
    // Serialize message field [Steering_Wheel_Direction]
    bufferOffset = _serializer.uint8(obj.Steering_Wheel_Direction, buffer, bufferOffset);
    // Serialize message field [CCU_Steering_Wheel_Angle]
    bufferOffset = _serializer.uint16(obj.CCU_Steering_Wheel_Angle, buffer, bufferOffset);
    // Serialize message field [CCU_Vehicle_Speed]
    bufferOffset = _serializer.uint16(obj.CCU_Vehicle_Speed, buffer, bufferOffset);
    // Serialize message field [CCU_Drive_Mode]
    bufferOffset = _serializer.uint8(obj.CCU_Drive_Mode, buffer, bufferOffset);
    // Serialize message field [Total_Odometer]
    bufferOffset = _serializer.uint32(obj.Total_Odometer, buffer, bufferOffset);
    // Serialize message field [Left_Front_Wheel_Speed]
    bufferOffset = _serializer.int16(obj.Left_Front_Wheel_Speed, buffer, bufferOffset);
    // Serialize message field [Left_Back_Wheel_Speed]
    bufferOffset = _serializer.int16(obj.Left_Back_Wheel_Speed, buffer, bufferOffset);
    // Serialize message field [Right_Front_Wheel_Speed]
    bufferOffset = _serializer.int16(obj.Right_Front_Wheel_Speed, buffer, bufferOffset);
    // Serialize message field [Right_Back_Wheel_Speed]
    bufferOffset = _serializer.int16(obj.Right_Back_Wheel_Speed, buffer, bufferOffset);
    // Serialize message field [Wheel_Transform_Vehicle_Speed]
    bufferOffset = _serializer.float64(obj.Wheel_Transform_Vehicle_Speed, buffer, bufferOffset);
    // Serialize message field [Angular_Speed]
    bufferOffset = _serializer.float64(obj.Angular_Speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type vehicle_info
    let len;
    let data = new vehicle_info(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [CCU_ShiftLevel_Sts]
    data.CCU_ShiftLevel_Sts = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [CCU_P_Sts]
    data.CCU_P_Sts = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [CCU_Ignition_Sts]
    data.CCU_Ignition_Sts = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Steering_Wheel_Direction]
    data.Steering_Wheel_Direction = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [CCU_Steering_Wheel_Angle]
    data.CCU_Steering_Wheel_Angle = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [CCU_Vehicle_Speed]
    data.CCU_Vehicle_Speed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [CCU_Drive_Mode]
    data.CCU_Drive_Mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Total_Odometer]
    data.Total_Odometer = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Left_Front_Wheel_Speed]
    data.Left_Front_Wheel_Speed = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Left_Back_Wheel_Speed]
    data.Left_Back_Wheel_Speed = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Right_Front_Wheel_Speed]
    data.Right_Front_Wheel_Speed = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Right_Back_Wheel_Speed]
    data.Right_Back_Wheel_Speed = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Wheel_Transform_Vehicle_Speed]
    data.Wheel_Transform_Vehicle_Speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Angular_Speed]
    data.Angular_Speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ys_ros_msgs/vehicle_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '117735f8501d259f661f2cb5a60954db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new vehicle_info(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.CCU_ShiftLevel_Sts !== undefined) {
      resolved.CCU_ShiftLevel_Sts = msg.CCU_ShiftLevel_Sts;
    }
    else {
      resolved.CCU_ShiftLevel_Sts = 0
    }

    if (msg.CCU_P_Sts !== undefined) {
      resolved.CCU_P_Sts = msg.CCU_P_Sts;
    }
    else {
      resolved.CCU_P_Sts = 0
    }

    if (msg.CCU_Ignition_Sts !== undefined) {
      resolved.CCU_Ignition_Sts = msg.CCU_Ignition_Sts;
    }
    else {
      resolved.CCU_Ignition_Sts = 0
    }

    if (msg.Steering_Wheel_Direction !== undefined) {
      resolved.Steering_Wheel_Direction = msg.Steering_Wheel_Direction;
    }
    else {
      resolved.Steering_Wheel_Direction = 0
    }

    if (msg.CCU_Steering_Wheel_Angle !== undefined) {
      resolved.CCU_Steering_Wheel_Angle = msg.CCU_Steering_Wheel_Angle;
    }
    else {
      resolved.CCU_Steering_Wheel_Angle = 0
    }

    if (msg.CCU_Vehicle_Speed !== undefined) {
      resolved.CCU_Vehicle_Speed = msg.CCU_Vehicle_Speed;
    }
    else {
      resolved.CCU_Vehicle_Speed = 0
    }

    if (msg.CCU_Drive_Mode !== undefined) {
      resolved.CCU_Drive_Mode = msg.CCU_Drive_Mode;
    }
    else {
      resolved.CCU_Drive_Mode = 0
    }

    if (msg.Total_Odometer !== undefined) {
      resolved.Total_Odometer = msg.Total_Odometer;
    }
    else {
      resolved.Total_Odometer = 0
    }

    if (msg.Left_Front_Wheel_Speed !== undefined) {
      resolved.Left_Front_Wheel_Speed = msg.Left_Front_Wheel_Speed;
    }
    else {
      resolved.Left_Front_Wheel_Speed = 0
    }

    if (msg.Left_Back_Wheel_Speed !== undefined) {
      resolved.Left_Back_Wheel_Speed = msg.Left_Back_Wheel_Speed;
    }
    else {
      resolved.Left_Back_Wheel_Speed = 0
    }

    if (msg.Right_Front_Wheel_Speed !== undefined) {
      resolved.Right_Front_Wheel_Speed = msg.Right_Front_Wheel_Speed;
    }
    else {
      resolved.Right_Front_Wheel_Speed = 0
    }

    if (msg.Right_Back_Wheel_Speed !== undefined) {
      resolved.Right_Back_Wheel_Speed = msg.Right_Back_Wheel_Speed;
    }
    else {
      resolved.Right_Back_Wheel_Speed = 0
    }

    if (msg.Wheel_Transform_Vehicle_Speed !== undefined) {
      resolved.Wheel_Transform_Vehicle_Speed = msg.Wheel_Transform_Vehicle_Speed;
    }
    else {
      resolved.Wheel_Transform_Vehicle_Speed = 0.0
    }

    if (msg.Angular_Speed !== undefined) {
      resolved.Angular_Speed = msg.Angular_Speed;
    }
    else {
      resolved.Angular_Speed = 0.0
    }

    return resolved;
    }
};

module.exports = vehicle_info;
