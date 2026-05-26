# FunctionStatus.msg
# Composite status containing all function modules
# Updated to use module-specific status messages (composition pattern)
# Based on Context System Redesign - see docs/README_CONTEXT_REDESIGN.md

# Module-specific statuses (using composition)
function_msgs/NavigationStatus nav_status
function_msgs/FollowStatus follow_status
function_msgs/BodyActionStatus body_action_status
function_msgs/HeadActionStatus head_action_status
function_msgs/LightStatus light_status
function_msgs/EmotionStatus emotion_status
function_msgs/SpeakStatus speak_status
function_msgs/RunningStatus running_status

# Ramp detection status
function_msgs/RampStatus ramp_status

# Payload estimation status
function_msgs/PayloadStatus payload_status
