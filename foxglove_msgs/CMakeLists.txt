cmake_minimum_required(VERSION 3.8)
project(foxglove_msgs)

if(POLICY CMP0148)
  cmake_policy(SET CMP0148 OLD)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/CompressedVideo.msg"
  "msg/FaultTypeArray.msg"
  "msg/FaultTypeStatus.msg"
  "msg/RawAudio.msg"
  "msg/TimeMetricHeader.msg"
  "msg/TriggerEvent.msg"
  "msg/TriggerNotify.msg"
  "srv/calibration/EolCalibReq.srv"
  DEPENDENCIES builtin_interfaces
)

ament_package()
