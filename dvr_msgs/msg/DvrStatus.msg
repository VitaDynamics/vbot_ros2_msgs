# DVR status message
# Reports current recording status and stream information

# Timestamp of the status update
builtin_interfaces/Time timestamp

# Recording status
bool recording
bool video_enabled
bool audio_enabled

# Current session information
string session_id
builtin_interfaces/Time session_start_time
uint32 session_duration_seconds

# Stream configuration
uint32 video_bitrate
uint32 audio_bitrate
uint32 segment_duration_seconds
uint32 max_segments

# Storage information
string storage_path
uint64 total_storage_bytes
uint64 used_storage_bytes
uint64 available_storage_bytes

# Error information
uint32 error_code
string error_message

# Quality metrics
float32 video_fps
uint32 dropped_video_frames
uint32 dropped_audio_frames
