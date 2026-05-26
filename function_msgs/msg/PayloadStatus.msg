# PayloadStatus.msg
# Payload estimation status message
#
# This message contains the current payload estimation status and mass
# reported by the MassDetector module.

# ==================== Status Constants ====================

# Unknown state - robot is not in a detectable state (moving, lying down, etc.)
uint8 STATUS_UNKNOWN = 0

# Payload mass is valid and updated
uint8 STATUS_VALID = 1

# Payload estimation ran but result is invalid/out-of-range
uint8 STATUS_INVALID = 2

# ==================== Status Fields ====================

# Current payload estimation status (STATUS_*)
uint8 status

# Estimated payload mass in kg
# Valid only when status == STATUS_VALID
float64 mass_kg

# ==================== Timestamp ====================

# Timestamp when this status was computed
builtin_interfaces/Time stamp
