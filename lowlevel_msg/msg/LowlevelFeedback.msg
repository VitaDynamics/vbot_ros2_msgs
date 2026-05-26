# Lowlevel control feedback message
# Reports action status and progress updates

# Standard ROS2 header
std_msgs/Header header

# Action information
string action_name         # Name of the action (e.g., "FIXED_STAND", "SHAKEHAND")
string generator_type      # Type of generator (e.g., "CSV_FILE", "RL_REALTIME", "KEYFRAME_INTERPOLATION")

# Status information
uint8 status               # Current action status: STARTED, RUNNING, SUCCESS, ERROR, INTERRUPTED
string status_message      # Optional status message or error description

# Progress information
float32 progress_percentage # Current progress (0.0-100.0)
float32 execution_duration # Current execution time in seconds

# Status constants
uint8 STARTED=0            # Action has started
uint8 RUNNING=1            # Action is running (progress update)
uint8 SUCCESS=2            # Action completed successfully
uint8 ERROR=3              # Action failed with error
uint8 INTERRUPTED=4        # Action was interrupted

# Recovery result constants
uint8 RECOVERY_IN_PROCESS=0
uint8 RECOVERY_SUCCESS=1
uint8 RECOVERY_FAILED=2

uint8 recovery_result      # Recovery result status
string req_id               # Request correlation ID for tracing
