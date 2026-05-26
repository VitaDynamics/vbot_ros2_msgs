# speech_msgs/msg/SpeechDogToPhone.msg
# Speech audio message for mic signal transmission
# Supports multiple sample rates and mono/stereo configurations

# Timestamp of the audio data
builtin_interfaces/Time timestamp

# Sample rate in Hz (e.g., 8000, 16000, 22050, 44100, 48000)
uint32 sample_rate

# Number of audio channels (1 for mono, 2 for stereo)
uint32 num_channels

# Bit depth (16 bits)
uint32 bit_depth

# Number of samples per channel
uint32 num_samples

# Frame sequence number
uint32 frame_sequence

# Audio signal data (16-bit signed integers, little-endian)
# For mono: [sample1, sample2, sample3, ...]
# For stereo: [left1, right1, left2, right2, left3, right3, ...]
# Each sample is 2 bytes (16 bits)
int16[] audio_data
