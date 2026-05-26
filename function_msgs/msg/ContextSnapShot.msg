# ContextSnapshot.msg
# Message for broadcasting complete context state periodically
# Based on CONTEXTNODE.md specification

# Structured, strongly-typed context data for better readability and maintenance

# DAG execution status
function_msgs/DagStatus dag_status

# Individual function execution status
function_msgs/FunctionStatus function_status

# System-wide status
function_msgs/SystemStatus system_status

# RCP (Robot Context Protocol) task lifecycle status
function_msgs/RcpStatus rcp_status

# === COMMON FIELDS ===

# Timestamp when the snapshot was created
builtin_interfaces/Time timestamp

