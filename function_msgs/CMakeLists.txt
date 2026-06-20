cmake_minimum_required(VERSION 3.8)
project(function_msgs)

if(POLICY CMP0148)
  cmake_policy(SET CMP0148 OLD)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(action_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(std_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/AgentToSpeechAudioRaw.msg"
  "msg/AsrResult.msg"
  "msg/BodyActionStatus.msg"
  "msg/ChargingAlignmentStatus.msg"
  "msg/ContextEvent.msg"
  "msg/ContextKeySchema.msg"
  "msg/ContextSnapShot.msg"
  "msg/ContextUpdate.msg"
  "msg/DagStatus.msg"
  "msg/EmotionStatus.msg"
  "msg/FollowStatus.msg"
  "msg/FunctionStatus.msg"
  "msg/HeadActionStatus.msg"
  "msg/InteractionRuleSwitches.msg"
  "msg/KeyValue.msg"
  "msg/LightStatus.msg"
  "msg/NavigationStatus.msg"
  "msg/OmniResult.msg"
  "msg/PayloadStatus.msg"
  "msg/RampStatus.msg"
  "msg/RcpStatus.msg"
  "msg/RuleSwitchEntry.msg"
  "msg/RunningStatus.msg"
  "msg/SpeakStatus.msg"
  "msg/StereoTagDetection.msg"
  "msg/SystemStatus.msg"
  "msg/TraceEvent.msg"
  "srv/BaseAction.srv"
  "srv/BaseTrigger.srv"
  "srv/ControlFollowing.srv"
  "srv/FunctionInput.srv"
  "srv/GetContext.srv"
  "srv/GetContextSchema.srv"
  "srv/GetGuard.srv"
  "srv/GetInstantEstimatorStatus.srv"
  "srv/HimlocoControl.srv"
  "srv/NavigateToTarget.srv"
  "srv/OmniPrompt.srv"
  "srv/SemanticNavQuery.srv"
  "srv/SetContext.srv"
  "srv/SetFollowSpeed.srv"
  "srv/SetLoop.srv"
  "srv/SetProactive.srv"
  "srv/SetRuleSwitches.srv"
  "srv/SetRunMode.srv"
  "srv/SetSpeak.srv"
  "srv/SetTractionUserParam.srv"
  "srv/SystemControl.srv"
  "action/ContextWatch.action"
  "action/GoalNav.action"
  "action/RcpTask.action"
  DEPENDENCIES action_msgs builtin_interfaces geometry_msgs sensor_msgs std_msgs
)

ament_package()
