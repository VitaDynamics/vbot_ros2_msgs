# HeadActionStatus.msg
# Module-specific status for head action functionality
# Owned by: Head Action Team

# Status constants - encapsulated in message
uint8 STATUS_IDLE = 0
uint8 STATUS_RUNNING = 1

# Current execution status
uint8 status

uint8 MODE_ANGLE_CONTROL = 0
uint8 MODE_STREAM = 1

# Current execution mode
uint8 mode

# Source that last modified this status
string modify_source

# Head action-specific fields (extensible)
float32 head_pitch
float32 head_yaw
float32 head_roll
bool tracking_active

