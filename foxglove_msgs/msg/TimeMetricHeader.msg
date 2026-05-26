# foxglove_msgs/msg/TimeMetricHeader
# standard timestamp header

# pipeline id，
uint32 pipeline_source_id

# us，pipeline start time, usually sensor time
uint64 pipeline_start_ts

# us，module start time
uint64 module_start_ts

# us，module end time
uint64 module_end_ts