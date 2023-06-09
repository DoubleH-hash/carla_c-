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

class Location {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ins_time = null;
      this.gau_pos = null;
      this.wgs84_pos = null;
      this.orientation = null;
      this.speed = null;
      this.accelerate = null;
      this.gyro = null;
      this.ins_std_error = null;
      this.ins_data_info = null;
      this.INS_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ins_time')) {
        this.ins_time = initObj.ins_time
      }
      else {
        this.ins_time = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('gau_pos')) {
        this.gau_pos = initObj.gau_pos
      }
      else {
        this.gau_pos = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('wgs84_pos')) {
        this.wgs84_pos = initObj.wgs84_pos
      }
      else {
        this.wgs84_pos = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('accelerate')) {
        this.accelerate = initObj.accelerate
      }
      else {
        this.accelerate = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('gyro')) {
        this.gyro = initObj.gyro
      }
      else {
        this.gyro = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('ins_std_error')) {
        this.ins_std_error = initObj.ins_std_error
      }
      else {
        this.ins_std_error = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('ins_data_info')) {
        this.ins_data_info = initObj.ins_data_info
      }
      else {
        this.ins_data_info = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('INS_status')) {
        this.INS_status = initObj.INS_status
      }
      else {
        this.INS_status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Location
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [ins_time] has the right length
    if (obj.ins_time.length !== 2) {
      throw new Error('Unable to serialize array field ins_time - length must be 2')
    }
    // Serialize message field [ins_time]
    bufferOffset = _arraySerializer.int32(obj.ins_time, buffer, bufferOffset, 2);
    // Check that the constant length array field [gau_pos] has the right length
    if (obj.gau_pos.length !== 2) {
      throw new Error('Unable to serialize array field gau_pos - length must be 2')
    }
    // Serialize message field [gau_pos]
    bufferOffset = _arraySerializer.float64(obj.gau_pos, buffer, bufferOffset, 2);
    // Check that the constant length array field [wgs84_pos] has the right length
    if (obj.wgs84_pos.length !== 3) {
      throw new Error('Unable to serialize array field wgs84_pos - length must be 3')
    }
    // Serialize message field [wgs84_pos]
    bufferOffset = _arraySerializer.float64(obj.wgs84_pos, buffer, bufferOffset, 3);
    // Check that the constant length array field [orientation] has the right length
    if (obj.orientation.length !== 3) {
      throw new Error('Unable to serialize array field orientation - length must be 3')
    }
    // Serialize message field [orientation]
    bufferOffset = _arraySerializer.float32(obj.orientation, buffer, bufferOffset, 3);
    // Check that the constant length array field [speed] has the right length
    if (obj.speed.length !== 3) {
      throw new Error('Unable to serialize array field speed - length must be 3')
    }
    // Serialize message field [speed]
    bufferOffset = _arraySerializer.float32(obj.speed, buffer, bufferOffset, 3);
    // Check that the constant length array field [accelerate] has the right length
    if (obj.accelerate.length !== 3) {
      throw new Error('Unable to serialize array field accelerate - length must be 3')
    }
    // Serialize message field [accelerate]
    bufferOffset = _arraySerializer.float32(obj.accelerate, buffer, bufferOffset, 3);
    // Check that the constant length array field [gyro] has the right length
    if (obj.gyro.length !== 3) {
      throw new Error('Unable to serialize array field gyro - length must be 3')
    }
    // Serialize message field [gyro]
    bufferOffset = _arraySerializer.float32(obj.gyro, buffer, bufferOffset, 3);
    // Check that the constant length array field [ins_std_error] has the right length
    if (obj.ins_std_error.length !== 4) {
      throw new Error('Unable to serialize array field ins_std_error - length must be 4')
    }
    // Serialize message field [ins_std_error]
    bufferOffset = _arraySerializer.float32(obj.ins_std_error, buffer, bufferOffset, 4);
    // Check that the constant length array field [ins_data_info] has the right length
    if (obj.ins_data_info.length !== 3) {
      throw new Error('Unable to serialize array field ins_data_info - length must be 3')
    }
    // Serialize message field [ins_data_info]
    bufferOffset = _arraySerializer.int32(obj.ins_data_info, buffer, bufferOffset, 3);
    // Serialize message field [INS_status]
    bufferOffset = _serializer.string(obj.INS_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Location
    let len;
    let data = new Location(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ins_time]
    data.ins_time = _arrayDeserializer.int32(buffer, bufferOffset, 2)
    // Deserialize message field [gau_pos]
    data.gau_pos = _arrayDeserializer.float64(buffer, bufferOffset, 2)
    // Deserialize message field [wgs84_pos]
    data.wgs84_pos = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [orientation]
    data.orientation = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [speed]
    data.speed = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [accelerate]
    data.accelerate = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [gyro]
    data.gyro = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [ins_std_error]
    data.ins_std_error = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [ins_data_info]
    data.ins_data_info = _arrayDeserializer.int32(buffer, bufferOffset, 3)
    // Deserialize message field [INS_status]
    data.INS_status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.INS_status);
    return length + 128;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ys_ros_msgs/Location';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f2d9b0d226b62d4d28d5ba0a19bf067';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Location(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ins_time !== undefined) {
      resolved.ins_time = msg.ins_time;
    }
    else {
      resolved.ins_time = new Array(2).fill(0)
    }

    if (msg.gau_pos !== undefined) {
      resolved.gau_pos = msg.gau_pos;
    }
    else {
      resolved.gau_pos = new Array(2).fill(0)
    }

    if (msg.wgs84_pos !== undefined) {
      resolved.wgs84_pos = msg.wgs84_pos;
    }
    else {
      resolved.wgs84_pos = new Array(3).fill(0)
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = new Array(3).fill(0)
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = new Array(3).fill(0)
    }

    if (msg.accelerate !== undefined) {
      resolved.accelerate = msg.accelerate;
    }
    else {
      resolved.accelerate = new Array(3).fill(0)
    }

    if (msg.gyro !== undefined) {
      resolved.gyro = msg.gyro;
    }
    else {
      resolved.gyro = new Array(3).fill(0)
    }

    if (msg.ins_std_error !== undefined) {
      resolved.ins_std_error = msg.ins_std_error;
    }
    else {
      resolved.ins_std_error = new Array(4).fill(0)
    }

    if (msg.ins_data_info !== undefined) {
      resolved.ins_data_info = msg.ins_data_info;
    }
    else {
      resolved.ins_data_info = new Array(3).fill(0)
    }

    if (msg.INS_status !== undefined) {
      resolved.INS_status = msg.INS_status;
    }
    else {
      resolved.INS_status = ''
    }

    return resolved;
    }
};

module.exports = Location;
