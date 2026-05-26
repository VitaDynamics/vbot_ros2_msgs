# ContextUpdate.msg
# Message for broadcasting individual context changes
# Based on CONTEXTNODE.md specification
#
# This message uses structured types matching ContextSnapshot.msg for clarity
# and clear separation of DAG-level, Function-level, and System-level updates.

# === UPDATE TYPE FLAGS ===
# Indicate which sections of the context were updated
bool has_dag_update         # True if dag_status contains updates
bool has_function_update    # True if function_status contains updates
bool has_system_update      # True if system_status contains updates

# === STRUCTURED UPDATE DATA ===
# Only the sections with has_*_update=true contain valid data

# DAG-level updates
function_msgs/DagStatus dag_status

# Function-level updates
function_msgs/FunctionStatus function_status

# System-level updates
function_msgs/SystemStatus system_status

# === METADATA ===
# Timestamp when the update occurred
builtin_interfaces/Time timestamp

# Node that initiated the context change
string source_node