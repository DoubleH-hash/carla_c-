// Auto-generated. Do not edit!

// (in-package ys_ros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Lane = require('../msg/Lane.js');

//-----------------------------------------------------------

class getLaneByIdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_id = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type getLaneByIdRequest
    // Serialize message field [lane_id]
    bufferOffset = _serializer.int32(obj.lane_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type getLaneByIdRequest
    let len;
    let data = new getLaneByIdRequest(null);
    // Deserialize message field [lane_id]
    data.lane_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ys_ros_msgs/getLaneByIdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22a16463d225f98d2cfa8fbcee744904';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 lane_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new getLaneByIdRequest(null);
    if (msg.lane_id !== undefined) {
      resolved.lane_id = msg.lane_id;
    }
    else {
      resolved.lane_id = 0
    }

    return resolved;
    }
};

class getLaneByIdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane = null;
    }
    else {
      if (initObj.hasOwnProperty('lane')) {
        this.lane = initObj.lane
      }
      else {
        this.lane = new Lane();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type getLaneByIdResponse
    // Serialize message field [lane]
    bufferOffset = Lane.serialize(obj.lane, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type getLaneByIdResponse
    let len;
    let data = new getLaneByIdResponse(null);
    // Deserialize message field [lane]
    data.lane = Lane.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Lane.getMessageSize(object.lane);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ys_ros_msgs/getLaneByIdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a00a76d0e7d8edced9fb94bb2375d6b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Lane lane
    
    ================================================================================
    MSG: ys_ros_msgs/Lane
    int32 point_num
    PointXYA[] points
    ================================================================================
    MSG: ys_ros_msgs/PointXYA
    Header header
    float64 x
    float64 y
    float64 yaw  # degs
    
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
    const resolved = new getLaneByIdResponse(null);
    if (msg.lane !== undefined) {
      resolved.lane = Lane.Resolve(msg.lane)
    }
    else {
      resolved.lane = new Lane()
    }

    return resolved;
    }
};

module.exports = {
  Request: getLaneByIdRequest,
  Response: getLaneByIdResponse,
  md5sum() { return 'b5929bbea2e368bcec6d7de3a649d93e'; },
  datatype() { return 'ys_ros_msgs/getLaneById'; }
};
