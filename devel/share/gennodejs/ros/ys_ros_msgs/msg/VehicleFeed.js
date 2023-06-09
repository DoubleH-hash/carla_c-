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

class VehicleFeed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timestamp = null;
      this.LFspd = null;
      this.LBspd = null;
      this.RFspd = null;
      this.RBspd = null;
      this.gear = null;
      this.speed = null;
      this.steerAng = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('LFspd')) {
        this.LFspd = initObj.LFspd
      }
      else {
        this.LFspd = 0.0;
      }
      if (initObj.hasOwnProperty('LBspd')) {
        this.LBspd = initObj.LBspd
      }
      else {
        this.LBspd = 0.0;
      }
      if (initObj.hasOwnProperty('RFspd')) {
        this.RFspd = initObj.RFspd
      }
      else {
        this.RFspd = 0.0;
      }
      if (initObj.hasOwnProperty('RBspd')) {
        this.RBspd = initObj.RBspd
      }
      else {
        this.RBspd = 0.0;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('steerAng')) {
        this.steerAng = initObj.steerAng
      }
      else {
        this.steerAng = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleFeed
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [LFspd]
    bufferOffset = _serializer.float64(obj.LFspd, buffer, bufferOffset);
    // Serialize message field [LBspd]
    bufferOffset = _serializer.float64(obj.LBspd, buffer, bufferOffset);
    // Serialize message field [RFspd]
    bufferOffset = _serializer.float64(obj.RFspd, buffer, bufferOffset);
    // Serialize message field [RBspd]
    bufferOffset = _serializer.float64(obj.RBspd, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.int8(obj.gear, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [steerAng]
    bufferOffset = _serializer.float64(obj.steerAng, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleFeed
    let len;
    let data = new VehicleFeed(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [LFspd]
    data.LFspd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [LBspd]
    data.LBspd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [RFspd]
    data.RFspd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [RBspd]
    data.RBspd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steerAng]
    data.steerAng = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ys_ros_msgs/VehicleFeed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '138084c58c4fbccd8851afdacaa5730e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    # feed of wheel speed and gear for INS
    time timestamp
    float64 LFspd  #left front, km/h
    float64 LBspd  #left behind km/h
    float64 RFspd  #right front km/h
    float64 RBspd  #right behind km/h
    int8 gear   # P R N D 1 2 3 4
    float64 speed #车速，km/h
    float64 steerAng # 方向盘转角，左正右负,deg
    
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
    const resolved = new VehicleFeed(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = {secs: 0, nsecs: 0}
    }

    if (msg.LFspd !== undefined) {
      resolved.LFspd = msg.LFspd;
    }
    else {
      resolved.LFspd = 0.0
    }

    if (msg.LBspd !== undefined) {
      resolved.LBspd = msg.LBspd;
    }
    else {
      resolved.LBspd = 0.0
    }

    if (msg.RFspd !== undefined) {
      resolved.RFspd = msg.RFspd;
    }
    else {
      resolved.RFspd = 0.0
    }

    if (msg.RBspd !== undefined) {
      resolved.RBspd = msg.RBspd;
    }
    else {
      resolved.RBspd = 0.0
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.steerAng !== undefined) {
      resolved.steerAng = msg.steerAng;
    }
    else {
      resolved.steerAng = 0.0
    }

    return resolved;
    }
};

module.exports = VehicleFeed;
