string soc_uid

# S100 / X5
string platform_type

# Versions
string app_version
string sys_version

float32[] cpu_temperature
float32[] bpu_temperature
float32[] mcu_temperature
float32[] bpu_usage
float32 cpu_us
float32 cpu_sy
float32 cpu_ni
float32 cpu_id
float32 cpu_wa
float32 cpu_hi
float32 cpu_si
float32 cpu_st
float32 mem_total
float32 mem_free
float32 mem_used
float32 mem_buffcache
float32 mem_shared
float32 mem_available
uint32 ddr_freq

# Unified detailed stats for visualization (avoid index misalignment)
lowlevel_msg/ProcessStat[] process_stats
lowlevel_msg/DiskUsage[] disk_usages
string[] coredumps