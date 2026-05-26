# ContextEvent.msg
# Simple event notification for context updates
# Includes full context snapshot for correlation

# Timestamp when the event occurred
builtin_interfaces/Time timestamp

# Event type identifier
string event_type

# Request ID for end-to-end tracing (empty if autonomous/legacy)
string request_id

# Full context snapshot for correlation
function_msgs/ContextSnapShot context_snapshot