# ContextKeySchema.msg
# Message describing individual context key schema information for discovery

# Key identification
int32 key_enum_value        # ContextKey enum value
string key_name            # String name of the key
string category            # Category grouping (e.g., "DAG_STATUS", "NAVIGATION")

# Type information
string data_type           # ROS2 data type (e.g., "string", "uint8", "bool")
string value_constraints    # Optional: Valid values/range description
bool is_readable           # Key can be read via get_context
bool is_writable           # Key can be written via set_context

# Documentation
string description         # Human-readable description
string example_value       # Example of valid value