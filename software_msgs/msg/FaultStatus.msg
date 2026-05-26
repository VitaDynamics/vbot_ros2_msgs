# time_header for delay statistics
# std_msgs/Header header
foxglove_msgs/TimeMetricHeader time_header

byte FAULT_OCCUR = 0
byte FAULT_RESTORE = 1
byte status

uint32 fault_id

KeyValue[] key_values
