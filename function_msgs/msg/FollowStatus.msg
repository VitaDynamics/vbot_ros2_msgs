# FollowStatus.msg
# Module-specific status for following functionality
# Owned by: Follow Team

# Status constants - encapsulated in message
uint8 STATUS_IDLE = 0
uint8 STATUS_RUNNING = 1

# Current execution status
uint8 status

uint8 STOP=0
uint8 FOLLOWING=1
uint8 ROAMING=2
uint8 NAV_TO_POINT=3
uint8 COME_TO_ME=4
uint8 WALK=5
uint8 SYNC_SEMANTIC_NAV=6
uint8 ASYNC_SEMANTIC_NAV=7

# Current execution mode
uint8 mode

# Source that last modified this status
string modify_source

# Following-specific fields (extensible)
float32 follow_speed

# Last mode result. For mode 6, this reports the latest SyncSemanticNav outcome.
uint8 RESULT_UNKNOWN=0
uint8 RESULT_SUCCESS=1
uint8 RESULT_FAILED_TARGET_TOO_FAR=2

uint8 last_result
uint8 last_result_mode
string last_result_reason
float32 last_result_distance_m
