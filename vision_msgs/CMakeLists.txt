cmake_minimum_required(VERSION 3.8)
project(vision_msgs)

if(POLICY CMP0148)
  cmake_policy(SET CMP0148 OLD)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(action_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(std_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/BoundingBox2D.msg"
  "msg/BoundingBox2DArray.msg"
  "msg/BoundingBox3D.msg"
  "msg/BoundingBox3DArray.msg"
  "msg/Classification.msg"
  "msg/ClipItem.msg"
  "msg/Detection2D.msg"
  "msg/Detection2DArray.msg"
  "msg/Detection3D.msg"
  "msg/Detection3DArray.msg"
  "msg/HumanDetectionStatus.msg"
  "msg/LabelInfo.msg"
  "msg/ObjectHypothesis.msg"
  "msg/ObjectHypothesisWithPose.msg"
  "msg/Point2D.msg"
  "msg/Pose2D.msg"
  "msg/PoseDetection.msg"
  "msg/PoseKeypoint.msg"
  "msg/SegmentationDetections2D.msg"
  "msg/VisionClass.msg"
  "msg/VisionInfo.msg"
  "srv/GetPoseDetection.srv"
  "action/GetFeatures.action"
  DEPENDENCIES action_msgs geometry_msgs sensor_msgs std_msgs
)

ament_package()
