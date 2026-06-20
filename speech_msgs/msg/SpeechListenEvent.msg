# speech_msgs/msg/SpeechListenEvent.msg
# Speech listen switch event message
# 表示语音聆听开关的事件（用于通知 ASR/语音模块开始/结束聆听）

# Timestamp of the event
# 事件时间戳
builtin_interfaces/Time timestamp

# Event indicating voice listening state
# 事件类型：表示语音聆听是否开启
# 使用 uint8 常量作为枚举值
#
# VOICE_ON / VOICE_OFF 是去重后的"耳灯指示"边沿（整轮只发一次）。
# PHASE_* 是按状态、不去重的"表情相位"信号：每次进入对应状态都会发，
# 用于驱动各状态专属表情（连续模式重入监听时也会重发）。下游（RCP）
# 按值路由到不同 EventType，避免与 VOICE_ON/OFF 共用去抖窗口。
uint8 VOICE_ON=0
uint8 VOICE_OFF=1
uint8 PHASE_LISTENING=2
uint8 PHASE_THINKING=3
# PHASE_CLEAR 收回当前的语音相位表情，回到默认脸。用于 UWB remote-audio 这类
# 没有可靠"轮结束"信号的链路：思考进入后若超时仍无 TTS 应答，hub 发 PHASE_CLEAR
# 让 RCP 取消 emotion，避免思考脸卡死（本地链路由 VOICE_OFF 收尾，不需要它）。
uint8 PHASE_CLEAR=4

# The event value. Should be one of the constants above.
# 事件值，取上述常量之一
uint8 event
