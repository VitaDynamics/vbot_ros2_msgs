# ISP 2A status (exposure + AWB)
# Camera identifier (e.g. left/right or sensor name)
string camera_name

# Firmware/library version of ISP module for these attributes
uint32 version

# Exposure
int32 exposure_mode
float32 exp_time
float32 again
float32 dgain
float32 ispgain
float32 ae_exp
uint32 cur_lux
uint32 frame_id

# AWB
int32 awb_mode
float32 rgain
float32 grgain
float32 gbgain
float32 bgain

# Timestamp in nanoseconds from device or system
uint64 timestamp_ns


