// Auto-generated. Do not edit!

// (in-package ys_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PointXYA = require('./PointXYA.js');

//-----------------------------------------------------------

class LanePlan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point_num = null;
      this.points = null;
      this.cur_pos = null;
      this.speed = null;
      this.gear = null;
    }
    else {
      if (initObj.hasOwnProperty('point_num')) {
        this.point_num = initObj.point_num
      }
      else {
        this.point_num = 0;
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('cur_pos')) {
        this.cur_pos = initObj.cur_pos
      }
      else {
        this.cur_pos = new PointXYA();
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LanePlan
    // Serialize message field [point_num]
    bufferOffset = _serializer.int32(obj.point_num, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = PointXYA.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cur_pos]
    bufferOffset = PointXYA.serialize(obj.cur_pos, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.int8(obj.speed, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.int8(obj.gear, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LanePlan
    let len;
    let data = new LanePlan(null);
    // Deserialize message field [point_num]
    data.point_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = PointXYA.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cur_pos]
    data.cur_pos = PointXYA.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.points.forEach((val) => {
      length += PointXYA.getMessageSize(val);
    });
    length += PointXYA.getMessageSize(object.cur_pos);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ys_ros_msgs/LanePlan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74956f693f7b4fb31d148cbde11780fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 point_num
    PointXYA[] points
    PointXYA cur_pos
    int8 speed
    int8 gear
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
    const resolved = new LanePlan(null);
    if (msg.point_num !== undefined) {
      resolved.point_num = msg.point_num;
    }
    else {
      resolved.point_num = 0
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = PointXYA.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.cur_pos !== undefined) {
      resolved.cur_pos = PointXYA.Resolve(msg.cur_pos)
    }
    else {
      resolved.cur_pos = new PointXYA()
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    return resolved;
    }
};

module.exports = LanePlan;
