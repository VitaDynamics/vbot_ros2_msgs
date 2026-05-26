# EmotionStatus.msg
# Module-specific status for emotion functionality
# Owned by: Emotion Team

# Status constants - encapsulated in message
uint8 STATUS_IDLE = 0
uint8 STATUS_RUNNING = 1

# Current execution status
uint8 status

# Current execution mode
uint8 mode

# Source that last modified this status
string modify_source



