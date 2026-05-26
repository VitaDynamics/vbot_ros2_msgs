# speech_msgs/msg/SpeechListenEvent.msg
# Speech listen switch event message
# 表示语音聆听开关的事件（用于通知 ASR/语音模块开始/结束聆听）

# Timestamp of the event
# 事件时间戳
builtin_interfaces/Time timestamp

# Event indicating voice listening state
# 事件类型：表示语音聆听是否开启
# 使用 uint8 常量作为枚举值
uint8 VOICE_ON=0
uint8 VOICE_OFF=1

# The event value. Should be one of {VOICE_ON, VOICE_OFF}
# 事件值，取上述常量之一
uint8 event
