cmake_minimum_required(VERSION 3.8)
project(lowlevel_msg)

if(POLICY CMP0148)
  cmake_policy(SET CMP0148 OLD)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(std_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/AudioData.msg"
  "msg/BmsCmd.msg"
  "msg/BmsState.msg"
  "msg/DiskUsage.msg"
  "msg/DiskUsageArray.msg"
  "msg/Error.msg"
  "msg/Go2FrontVideoData.msg"
  "msg/HeadCmd.msg"
  "msg/HeightMap.msg"
  "msg/IMUDebug.msg"
  "msg/IMUState.msg"
  "msg/InterfaceConfig.msg"
  "msg/LidarState.msg"
  "msg/LowCmd.msg"
  "msg/LowState.msg"
  "msg/LowlevelFeedback.msg"
  "msg/LowlevelMetrics.msg"
  "msg/LowlevelMetricsItem.msg"
  "msg/MotorCmd.msg"
  "msg/MotorCmds.msg"
  "msg/MotorState.msg"
  "msg/MotorStates.msg"
  "msg/PathPoint.msg"
  "msg/PlatformState.msg"
  "msg/ProcessStat.msg"
  "msg/ProcessStats.msg"
  "msg/Req.msg"
  "msg/Res.msg"
  "msg/ServoStatus.msg"
  "msg/ServoStatuses.msg"
  "msg/SportModeCmd.msg"
  "msg/SportModeState.msg"
  "msg/TimeSpec.msg"
  "msg/UwbState.msg"
  "msg/UwbSwitch.msg"
  "msg/WirelessController.msg"
  "srv/FrameRecording.srv"
  "srv/GetLowState.srv"
  "srv/HeadAction.srv"
  DEPENDENCIES builtin_interfaces std_msgs
)

ament_package()
