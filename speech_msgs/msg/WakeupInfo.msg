# speech_msgs/msg/WakeupInfo.msg
# Wakeup information message for transmitting wakeup events
# Distinguishes between dog (local) wakeup and phone (remote) wakeup

# Timestamp of the wakeup event
builtin_interfaces/Time timestamp

# Wakeup source type
# 0: WAKEUP_SOURCE_DOG   - Local wakeup from dog device (本体唤醒)
# 1: WAKEUP_SOURCE_PHONE - Remote wakeup from phone app (手机唤醒)
uint8 wakeup_source

# Constants for wakeup source
uint8 WAKEUP_SOURCE_DOG = 0
uint8 WAKEUP_SOURCE_PHONE = 1

# DOA (Direction of Arrival) information
# Angle in degrees, typically 0-360 where:
# 0 degrees = front direction
# Positive angles = clockwise rotation
# -1 indicates DOA information is unavailable (e.g., for phone wakeup)
int16 doa_angle

# Wakeup word text (唤醒词)
# Chinese: "大头大头"
# English: "Hey_Babo"
string wakeup_word

