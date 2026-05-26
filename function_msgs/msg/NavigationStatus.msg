# NavigationStatus.msg
# Module-specific status for navigation functionality
# Owned by: Navigation Team

# Status constants - encapsulated in message
uint8 STATUS_IDLE = 0
uint8 STATUS_RUNNING = 1

# Current execution status
uint8 status

# Mode constants - encapsulated in message
uint8 MODE_ROTATE_IN_PLACE = 0
uint8 MODE_MOVE_FORWARD = 1
uint8 MODE_MOVE_BACKWARD = 2
uint8 MODE_GOAL_NAVIGATION = 3

# Current execution mode
uint8 mode

# Source that last modified this status
string modify_source

# Navigation-specific fields (extensible)
float32 current_linear_velocity
float32 current_angular_velocity

