cmake_minimum_required(VERSION 3.8)
project(software_msgs)

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
find_package(foxglove_msgs REQUIRED)
find_package(rcl_interfaces REQUIRED)
find_package(std_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/AdcInfo.msg"
  "msg/AgentService.msg"
  "msg/CounterDebounce.msg"
  "msg/DataLoopTrigger.msg"
  "msg/FaultInfo.msg"
  "msg/FaultList.msg"
  "msg/FaultStatus.msg"
  "msg/FaultStatusArray.msg"
  "msg/FaultStatusBase.msg"
  "msg/KeyValue.msg"
  "msg/KeyValueArray.msg"
  "msg/LocomotionEvent.msg"
  "msg/LocomotionStatus.msg"
  "msg/LogBatch.msg"
  "msg/OTAItem.msg"
  "msg/ProcessStateChange.msg"
  "msg/ProcessStateChangeList.msg"
  "msg/StateChangeNtfy.msg"
  "msg/StateChangePre.msg"
  "msg/StateConfirm.msg"
  "msg/SystemStateMachineStatus.msg"
  "msg/TimerDebounce.msg"
  "srv/AgentSvc.srv"
  "srv/ClearFaults.srv"
  "srv/CommonEvent.srv"
  "srv/CounterDebounceArray.srv"
  "srv/ExecuteCommand.srv"
  "srv/ExecuteOTA.srv"
  "srv/FaultArray.srv"
  "srv/GetFaultsCount.srv"
  "srv/GetFaultsInfo.srv"
  "srv/GetFgState.srv"
  "srv/GetInitMachineStateTransResult.srv"
  "srv/LowlevelAction.srv"
  "srv/ProfileSnapshot.srv"
  "srv/ReportExecutionState.srv"
  "srv/ReportOTAStatus.srv"
  "srv/ReportState.srv"
  "srv/RestartProcess.srv"
  "srv/SetFgState.srv"
  "srv/SetPowerSaving.srv"
  "srv/SetState.srv"
  "srv/TimerDebounceArray.srv"
  "srv/TriggerMcap.srv"
  "srv/TriggerOTA.srv"
  "srv/TriggerUploader.srv"
  "srv/UpdateEeprom.srv"
  "action/DownloadPackage.action"
  DEPENDENCIES action_msgs builtin_interfaces foxglove_msgs rcl_interfaces std_msgs
)

ament_package()
