
"use strict";

let Lane = require('./Lane.js');
let VehicleFeed = require('./VehicleFeed.js');
let vehicle_info = require('./vehicle_info.js');
let Map = require('./Map.js');
let LaneDetectionArray = require('./LaneDetectionArray.js');
let VehicleCMD = require('./VehicleCMD.js');
let LaneDetection = require('./LaneDetection.js');
let AprilTagDetection = require('./AprilTagDetection.js');
let Velocity = require('./Velocity.js');
let VehicleLight = require('./VehicleLight.js');
let Location = require('./Location.js');
let VisionDetection = require('./VisionDetection.js');
let LanePlan = require('./LanePlan.js');
let VehicleStatus = require('./VehicleStatus.js');
let PointXYA = require('./PointXYA.js');
let CarToServer = require('./CarToServer.js');
let VisionDetectionArray = require('./VisionDetectionArray.js');
let AprilTagDetectionArray = require('./AprilTagDetectionArray.js');

module.exports = {
  Lane: Lane,
  VehicleFeed: VehicleFeed,
  vehicle_info: vehicle_info,
  Map: Map,
  LaneDetectionArray: LaneDetectionArray,
  VehicleCMD: VehicleCMD,
  LaneDetection: LaneDetection,
  AprilTagDetection: AprilTagDetection,
  Velocity: Velocity,
  VehicleLight: VehicleLight,
  Location: Location,
  VisionDetection: VisionDetection,
  LanePlan: LanePlan,
  VehicleStatus: VehicleStatus,
  PointXYA: PointXYA,
  CarToServer: CarToServer,
  VisionDetectionArray: VisionDetectionArray,
  AprilTagDetectionArray: AprilTagDetectionArray,
};
