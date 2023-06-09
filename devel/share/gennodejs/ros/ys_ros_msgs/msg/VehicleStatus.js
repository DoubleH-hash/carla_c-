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

class VehicleStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timestamp = null;
      this.steerAngle = null;
      this.vehicleSpeed = null;
      this.vehicleAcceleration = null;
      this.gear = null;
      this.controlStatus = null;
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
      if (initObj.hasOwnProperty('steerAngle')) {
        this.steerAngle = initObj.steerAngle
      }
      else {
        this.steerAngle = 0.0;
      }
      if (initObj.hasOwnProperty('vehicleSpeed')) {
        this.vehicleSpeed = initObj.vehicleSpeed
      }
      else {
        this.vehicleSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('vehicleAcceleration')) {
        this.vehicleAcceleration = initObj.vehicleAcceleration
      }
      else {
        this.vehicleAcceleration = 0.0;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
      if (initObj.hasOwnProperty('controlStatus')) {
        this.controlStatus = initObj.controlStatus
      }
      else {
        this.controlStatus = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [steerAngle]
    bufferOffset = _serializer.float64(obj.steerAngle, buffer, bufferOffset);
    // Serialize message field [vehicleSpeed]
    bufferOffset = _serializer.float64(obj.vehicleSpeed, buffer, bufferOffset);
    // Serialize message field [vehicleAcceleration]
    bufferOffset = _serializer.float64(obj.vehicleAcceleration, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.int8(obj.gear, buffer, bufferOffset);
    // Serialize message field [controlStatus]
    bufferOffset = _serializer.int8(obj.controlStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleStatus
    let len;
    let data = new VehicleStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [steerAngle]
    data.steerAngle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vehicleSpeed]
    data.vehicleSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vehicleAcceleration]
    data.vehicleAcceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [controlStatus]
    data.controlStatus = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ys_ros_msgs/VehicleStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f8661bcfb5159cd801073982e804559';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    time timestamp
    float64 steerAngle # deg 左负右正
    float64 vehicleSpeed # km/h
    float64 vehicleAcceleration # m/s^2
    int8 gear                   # P=1 R=2 N=3 D=4
    int8 controlStatus          # force_stop = 0, stop = 1, forward = 2, back = 3, idle = 4
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
    const resolved = new VehicleStatus(null);
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

    if (msg.steerAngle !== undefined) {
      resolved.steerAngle = msg.steerAngle;
    }
    else {
      resolved.steerAngle = 0.0
    }

    if (msg.vehicleSpeed !== undefined) {
      resolved.vehicleSpeed = msg.vehicleSpeed;
    }
    else {
      resolved.vehicleSpeed = 0.0
    }

    if (msg.vehicleAcceleration !== undefined) {
      resolved.vehicleAcceleration = msg.vehicleAcceleration;
    }
    else {
      resolved.vehicleAcceleration = 0.0
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    if (msg.controlStatus !== undefined) {
      resolved.controlStatus = msg.controlStatus;
    }
    else {
      resolved.controlStatus = 0
    }

    return resolved;
    }
};

module.exports = VehicleStatus;
