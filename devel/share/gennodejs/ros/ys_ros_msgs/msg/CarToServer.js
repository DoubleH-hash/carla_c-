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

class CarToServer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.curMisStatus = null;
      this.curToStartDis = null;
      this.curToEndDis = null;
      this.failure = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('curMisStatus')) {
        this.curMisStatus = initObj.curMisStatus
      }
      else {
        this.curMisStatus = 0;
      }
      if (initObj.hasOwnProperty('curToStartDis')) {
        this.curToStartDis = initObj.curToStartDis
      }
      else {
        this.curToStartDis = 0.0;
      }
      if (initObj.hasOwnProperty('curToEndDis')) {
        this.curToEndDis = initObj.curToEndDis
      }
      else {
        this.curToEndDis = 0.0;
      }
      if (initObj.hasOwnProperty('failure')) {
        this.failure = initObj.failure
      }
      else {
        this.failure = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarToServer
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [curMisStatus]
    bufferOffset = _serializer.int8(obj.curMisStatus, buffer, bufferOffset);
    // Serialize message field [curToStartDis]
    bufferOffset = _serializer.float64(obj.curToStartDis, buffer, bufferOffset);
    // Serialize message field [curToEndDis]
    bufferOffset = _serializer.float64(obj.curToEndDis, buffer, bufferOffset);
    // Serialize message field [failure]
    bufferOffset = _serializer.int8(obj.failure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarToServer
    let len;
    let data = new CarToServer(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [curMisStatus]
    data.curMisStatus = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [curToStartDis]
    data.curToStartDis = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [curToEndDis]
    data.curToEndDis = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [failure]
    data.failure = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ys_ros_msgs/CarToServer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cdaf2bbe69c52e67fbea6c48be673f0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    # int8  taskStatus   #0:wait,1:driving，2:arrive,
    # bool bWaitStation  # true:wait for go to station,false:not wait for go to station
    # int8  taskCancelStatus  #0:normal,1:task cancel finished,2:task cancel failed
    # bool bGoOutStation #true in out station point ,false not in out station point
    int8 curMisStatus #0:normal,1:enter in station,2:arrive station,3:go out station
    float64 curToStartDis
    float64 curToEndDis
    int8 failure #0--normal,1--no map,2--have Obstacle,3--too far;4
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
    const resolved = new CarToServer(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.curMisStatus !== undefined) {
      resolved.curMisStatus = msg.curMisStatus;
    }
    else {
      resolved.curMisStatus = 0
    }

    if (msg.curToStartDis !== undefined) {
      resolved.curToStartDis = msg.curToStartDis;
    }
    else {
      resolved.curToStartDis = 0.0
    }

    if (msg.curToEndDis !== undefined) {
      resolved.curToEndDis = msg.curToEndDis;
    }
    else {
      resolved.curToEndDis = 0.0
    }

    if (msg.failure !== undefined) {
      resolved.failure = msg.failure;
    }
    else {
      resolved.failure = 0
    }

    return resolved;
    }
};

module.exports = CarToServer;
