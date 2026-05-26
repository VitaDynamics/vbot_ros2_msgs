# RunningStatus.msg
# Module-specific status for running mode functionality

# Status constants - encapsulated in message
uint8 STATUS_IDLE = 0
uint8 STATUS_RUNNING = 1

# Current execution status
uint8 status

uint8 MODE_MANUAL = 0
uint8 MODE_IDLE = 1
uint8 MODE_LOCO = 2
uint8 MODE_MPC = 3
uint8 MODE_PILOT = 4
uint8 MODE_INDOOR = 5

# Current execution mode (numeric for backward compatibility)
uint8 mode

# Current execution mode (string for modern usage)
string mode_str

# Source that last modified this status
string modify_source

# User-configured traction inertia parameter for locomotion
float64 traction_inertia_user

# Whether the traction parameter came from explicit user input
bool is_traction_user_param
