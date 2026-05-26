cmake_minimum_required(VERSION 3.8)
project(peripheral_msgs)

if(POLICY CMP0148)
  cmake_policy(SET CMP0148 OLD)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/DisplayInfo.msg"
  "msg/GnssRaw.msg"
  "msg/ShowImg.msg"
  "msg/SignalQuality.msg"
  "msg/TouchState.msg"
  "srv/BacklightCtrl.srv"
  "srv/DisplayImgs.srv"
  "srv/EfuseControl.srv"
  "srv/FanControl.srv"
  "srv/FanSpeed.srv"
  "srv/FillLight.srv"
  "srv/GetLightStatus.srv"
  "srv/GetSupportedEmotions.srv"
  "srv/LightControl.srv"
  "srv/LightGradient.srv"
  "srv/PlayEmotion.srv"
  "srv/QueryState.srv"
  "srv/WifiControl.srv"
  DEPENDENCIES std_msgs
)

ament_package()
