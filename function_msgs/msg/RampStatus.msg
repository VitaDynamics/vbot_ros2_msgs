# RampStatus.msg
# Ramp detection status message
#
# This message contains the current ramp detection status and angle
# reported by the RampDetector module.

# ==================== Status Constants ====================

# Unknown state - robot is not in a detectable state (moving, lying down, etc.)
uint8 STATUS_UNKNOWN = 0

# Robot is on flat ground (not on a ramp)
uint8 STATUS_NOT_ON_RAMP = 1

# Robot is on a ramp/slope
uint8 STATUS_ON_RAMP = 2

# ==================== Status Fields ====================

# Current ramp detection status (STATUS_*)
uint8 status

# Current ramp angle in degrees (0.0 - 90.0)
# Valid only when status is NOT_ON_RAMP or ON_RAMP
float64 angle_deg

# ==================== Timestamp ====================

# Timestamp when this status was computed
builtin_interfaces/Time stamp
