# foxglove_msgs/msg/TriggerEvent

# Event time in microseconds
int64 timestamp

# Source node name
string node

# Event type code (e.g., 0x5101, 0x5120 for overtime)
int32 type

# Pre/post time window in milliseconds
int32 before_ts
int32 after_ts

# Event level
int32 level

# Short description
string desc

# Arbitrary payload (e.g., aggregated fault info)
string payload
