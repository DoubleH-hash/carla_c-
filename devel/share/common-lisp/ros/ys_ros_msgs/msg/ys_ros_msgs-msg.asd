
(cl:in-package :asdf)

(defsystem "ys_ros_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AprilTagDetection" :depends-on ("_package_AprilTagDetection"))
    (:file "_package_AprilTagDetection" :depends-on ("_package"))
    (:file "AprilTagDetectionArray" :depends-on ("_package_AprilTagDetectionArray"))
    (:file "_package_AprilTagDetectionArray" :depends-on ("_package"))
    (:file "CarToServer" :depends-on ("_package_CarToServer"))
    (:file "_package_CarToServer" :depends-on ("_package"))
    (:file "Lane" :depends-on ("_package_Lane"))
    (:file "_package_Lane" :depends-on ("_package"))
    (:file "LaneDetection" :depends-on ("_package_LaneDetection"))
    (:file "_package_LaneDetection" :depends-on ("_package"))
    (:file "LaneDetectionArray" :depends-on ("_package_LaneDetectionArray"))
    (:file "_package_LaneDetectionArray" :depends-on ("_package"))
    (:file "LanePlan" :depends-on ("_package_LanePlan"))
    (:file "_package_LanePlan" :depends-on ("_package"))
    (:file "Location" :depends-on ("_package_Location"))
    (:file "_package_Location" :depends-on ("_package"))
    (:file "Map" :depends-on ("_package_Map"))
    (:file "_package_Map" :depends-on ("_package"))
    (:file "PointXYA" :depends-on ("_package_PointXYA"))
    (:file "_package_PointXYA" :depends-on ("_package"))
    (:file "VehicleCMD" :depends-on ("_package_VehicleCMD"))
    (:file "_package_VehicleCMD" :depends-on ("_package"))
    (:file "VehicleFeed" :depends-on ("_package_VehicleFeed"))
    (:file "_package_VehicleFeed" :depends-on ("_package"))
    (:file "VehicleLight" :depends-on ("_package_VehicleLight"))
    (:file "_package_VehicleLight" :depends-on ("_package"))
    (:file "VehicleStatus" :depends-on ("_package_VehicleStatus"))
    (:file "_package_VehicleStatus" :depends-on ("_package"))
    (:file "Velocity" :depends-on ("_package_Velocity"))
    (:file "_package_Velocity" :depends-on ("_package"))
    (:file "VisionDetection" :depends-on ("_package_VisionDetection"))
    (:file "_package_VisionDetection" :depends-on ("_package"))
    (:file "VisionDetectionArray" :depends-on ("_package_VisionDetectionArray"))
    (:file "_package_VisionDetectionArray" :depends-on ("_package"))
    (:file "vehicle_info" :depends-on ("_package_vehicle_info"))
    (:file "_package_vehicle_info" :depends-on ("_package"))
  ))