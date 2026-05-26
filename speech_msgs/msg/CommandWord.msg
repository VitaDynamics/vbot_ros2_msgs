# speech_msgs/msg/CommandWord.msg
# Command word message for publishing offline and online command words
# Supports both offline (simple string) and online (string with slots) command words
# 命令词消息，用于发布离线和在线命令词

# Timestamp of the command word event (optional, can be set by publisher or subscriber)
# 命令词事件的时间戳（可选，可由发布者或订阅者设置）
builtin_interfaces/Time timestamp

# Command type
# 命令类型
# 0: COMMAND_TYPE_OFFLINE - Offline command word (离线命令词)
# 1: COMMAND_TYPE_ONLINE  - Online command word (在线命令词)
uint8 command_type

# Constants for command type
# 命令类型常量
uint8 COMMAND_TYPE_OFFLINE = 0
uint8 COMMAND_TYPE_ONLINE = 1

# Command word text (命令词文本)
# For offline: the complete command word string
# For online: the command word template string
# 离线命令词：完整的命令词字符串
# 在线命令词：命令词模板字符串
string command_text

# Number of slots (only used for online command words)
# For offline command words, this should be 0
# Slot 数量（仅用于在线命令词）
# 对于离线命令词，此值应为 0
uint32 slot_count

# Slot values array (only used for online command words)
# Each element is a slot value extracted from the command word
# The array length should match slot_count
# For offline command words, this array should be empty
# Slot 值数组（仅用于在线命令词）
# 每个元素是从命令词中提取的 slot 值
# 数组长度应与 slot_count 匹配
# 对于离线命令词，此数组应为空
string[] slot_values
