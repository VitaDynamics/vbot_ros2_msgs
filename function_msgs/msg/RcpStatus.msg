# RcpStatus.msg
# RCP (Robot Context Protocol) task lifecycle status
# Used in ContextSnapShot to expose current RCP task state

# ==================== CORRELATION FIELDS ====================

# Unique correlation ID for the current/last task
string request_id

# Human-readable name of the task/DAG
string task_name

# Origin of the request (e.g., "app", "cloud", "proactive")
string source

# Internal scheduler ID for the task
uint64 scheduler_id

# ==================== STATE MACHINE ====================

# Task state constants
uint8 STATE_IDLE=0         # No active task
uint8 STATE_ACCEPTED=1     # Task validated and queued
uint8 STATE_RUNNING=2      # Task execution in progress
uint8 STATE_CANCELLING=3   # Cancellation in progress
uint8 STATE_COMPLETED=4    # Task completed successfully
uint8 STATE_FAILED=5       # Task failed
uint8 STATE_CANCELLED=6    # Task fully cancelled
uint8 STATE_REJECTED=7     # Task rejected by admission control

# Current task state
uint8 state

# ==================== TIMING ====================

# Timestamp of the last event
builtin_interfaces/Time last_event_time

# Raw TraceEventType value for debugging (matches TraceEvent.msg constants)
uint8 last_event_type

# Total execution time in milliseconds (set on completion/failure)
int64 duration_ms

# Time spent on cleanup in milliseconds (set on cancellation)
int64 cleanup_duration_ms

# ==================== OUTCOME ====================

# Last execution outcome
# Values: "SUCCESS", "FAILURE", "CANCELLED", "REJECTED", "" (empty when running/idle)
string last_outcome

# ==================== ERROR INFO ====================
# Populated on FAILED or REJECTED states

# Machine-parsable error code (ec.value())
int32 error_code

# Error category name (ec.category().name())
string error_category

# Human-readable error message
string error_message

# Node ID where failure occurred (if applicable)
string failed_at

# ==================== SUBTASK PROGRESS ====================

# Current DAG node or sub-operation name
string current_subtask

# Current subtask state (RUNNING/COMPLETED/FAILED/CANCELLED)
string subtask_state

# Completed progress steps
uint32 progress_step

# Total planned progress steps
uint32 progress_total
