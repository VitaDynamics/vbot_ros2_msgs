# LightStatus.msg
# Module-specific status for light control functionality
# Owned by: Light Team

# Status constants - encapsulated in message
uint8 STATUS_IDLE = 0
uint8 STATUS_RUNNING = 1

# Current execution status
uint8 status

uint8 MODE_FIXEDCOLOR = 0
uint8 MODE_GRADIENT = 1
uint8 MODE_BREATHING = 2
uint8 MODE_FLASHING = 3
uint8 MODE_CIRCLE_FLASH = 4
uint8 MODE_PULSE = 5
uint8 MODE_SEQUENCE = 6
uint8 MODE_POWER_OFF = 7

# Current execution mode
uint8 mode

# Source that last modified this status
string modify_source

# Light-specific fields (extensible)
uint8 red
uint8 green
uint8 blue
uint8 brightness

