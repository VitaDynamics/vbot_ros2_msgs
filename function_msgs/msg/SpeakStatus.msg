# SpeakStatus.msg
# Module-specific status for speech functionality
# Owned by: Speak Team

# Status constants - encapsulated in message
uint8 STATUS_IDLE = 0
uint8 STATUS_RUNNING = 1

# Current execution status
uint8 status

# Mode constants - encapsulated in message
uint8 MODE_MACHINE_LANGUAGE = 0
uint8 MODE_HUMAN_VOICE = 1

# Current execution mode
uint8 mode

# Source that last modified this status
string modify_source

# Speak-specific fields (extensible)
uint8 volume
string tts_code
uint64 session_id
string req_id
