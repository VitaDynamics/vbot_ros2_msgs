cmake_minimum_required(VERSION 3.8)
project(speech_msgs)

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
  "msg/ChatTtsNotification.msg"
  "msg/CommandWord.msg"
  "msg/SpeechDogToPhone.msg"
  "msg/SpeechListenEvent.msg"
  "msg/SpeechPhoneToDog.msg"
  "msg/WakeupInfo.msg"
  "srv/AudioLoopbackTest.srv"
  "srv/AuthActivate.srv"
  "srv/CommandWord.srv"
  "srv/ImmeaudioControl.srv"
  "srv/MusicRecordControl.srv"
  "srv/SpeechControl.srv"
  "srv/SpeechTextData.srv"
  "srv/VoiceprintControl.srv"
  "srv/VolumeControl.srv"
  DEPENDENCIES builtin_interfaces
)

ament_package()
