# speech_msgs/msg/ChatTtsNotification.msg
# TTS playback notification message
# Topic: /speech/ChatTtsNotification

# Notification type
# 通知类型
# 0: TTS_START_PLAYBACK - TTS开始播放
# 1: TTS_COMPLETED - TTS已经播放完成
# 2: TTS_INTERRUPTED - TTS播放被打断
uint8 notification_type

# Constants for notification type
# 通知类型常量
uint8 TTS_START_PLAYBACK = 0
uint8 TTS_COMPLETED = 1
uint8 TTS_INTERRUPTED = 2
