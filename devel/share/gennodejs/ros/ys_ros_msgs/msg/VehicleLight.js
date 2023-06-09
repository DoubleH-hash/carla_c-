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

class VehicleLight {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.light = null;
      this.voice = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('light')) {
        this.light = initObj.light
      }
      else {
        this.light = 0;
      }
      if (initObj.hasOwnProperty('voice')) {
        this.voice = initObj.voice
      }
      else {
        this.voice = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleLight
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [light]
    bufferOffset = _serializer.int8(obj.light, buffer, bufferOffset);
    // Serialize message field [voice]
    bufferOffset = _serializer.int8(obj.voice, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleLight
    let len;
    let data = new VehicleLight(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [light]
    data.light = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [voice]
    data.voice = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ys_ros_msgs/VehicleLight';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f9cc22bad4d7682f9155deefd937ce7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleLight(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.light !== undefined) {
      resolved.light = msg.light;
    }
    else {
      resolved.light = 0
    }

    if (msg.voice !== undefined) {
      resolved.voice = msg.voice;
    }
    else {
      resolved.voice = 0
    }

    return resolved;
    }
};

// Constants for message
VehicleLight.Constants = {
  CLOSEALL_LIGHT: 0,
  BIT_LOW_BEAM: 1,
  BIT_HIGH_BEAM: 2,
  BIT_LEFT_TURN_LIGHT: 3,
  BIT_RIGHT_TURN_LIGHT: 4,
  HARZAD_LIGHT: 5,
  BIT_POS_LIGHT: 6,
  BIT_BRAKE_LIGHT: 7,
}

module.exports = VehicleLight;
