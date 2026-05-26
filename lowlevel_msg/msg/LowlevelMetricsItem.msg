# One group-level metrics snapshot from lowlevel middleware.
# source: "motor" or "servo"
string source
string group_name
# Window boundaries in monotonic microseconds for this metrics sample.
uint64 window_start_us
uint64 window_end_us

# Summary counters for this metrics window.
# Field names are kept for compatibility; values are window deltas.
uint64 tx_cycles_total
uint64 tx_send_errors
uint64 rt_ack_timeouts
uint64 protocol_encode_errors
uint64 protocol_decode_errors
uint64 controller_send_rt_calls

# Gauges (instant values)
int64 transceiver_param_queue_depth
int64 transceiver_pending_waiters_count

# Latency snapshots for this metrics window (us).
uint64 transport_send_latency_count
float64 transport_send_latency_mean_us
uint64 transport_send_latency_min_us
uint64 transport_send_latency_max_us

uint64 transport_recv_latency_count
float64 transport_recv_latency_mean_us
uint64 transport_recv_latency_min_us
uint64 transport_recv_latency_max_us

uint64 tx_cycle_work_count
float64 tx_cycle_work_mean_us
uint64 tx_cycle_work_min_us
uint64 tx_cycle_work_max_us

uint64 tx_cycle_interval_count
float64 tx_cycle_interval_mean_us
uint64 tx_cycle_interval_min_us
uint64 tx_cycle_interval_max_us

uint64 rt_ack_latency_count
float64 rt_ack_latency_mean_us
uint64 rt_ack_latency_min_us
uint64 rt_ack_latency_max_us

uint64 send_rt_latency_count
float64 send_rt_latency_mean_us
uint64 send_rt_latency_min_us
uint64 send_rt_latency_max_us
