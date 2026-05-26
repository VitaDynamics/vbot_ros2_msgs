# DagStatus.msg
# Strongly-typed message for DAG execution status
# Based on global_context_keys.h DAG-related fields

# Current active DAG identifier
# Empty string when in NORMAL state (no DAG active)
string current_dag

# Emergency stop status
# TODO: This field should also be removal.
bool emergency_stop_active

# loop mode status -- Support 原地表演, 场馆漫游
uint8 loop_state
uint8 loop_mode 

# T Stage status 
uint8 t_stage_state

# SoulDancer status - Music-driven dance action generator
# soul_dancer_state: 0=idle (default/success), 1=processing, 2=error (failed)
uint8 soul_dancer_state

# DAG execution source identifier
# Possible values: "user" (user-initiated), "proactive" (proactive system-initiated)
# Empty string when in NORMAL state (no DAG active)
string dag_source

# DAG execution state constants
# Aligned with HSM FunctionState enum values
uint8 DAG_STATE_IDLE = 0         # NORMAL state - no DAG active
uint8 DAG_STATE_RUNNING = 1       # ACTION state - DAG executing

# Current DAG execution state
uint8 execution_state

# Last DAG execution outcome
# Values: "SUCCESS", "FAILURE", "CANCELLED", "INTERRUPTED", "TIMEOUT"
string last_outcome

# Last execution message
# Detailed message describing the result of the most recent execution
string last_message