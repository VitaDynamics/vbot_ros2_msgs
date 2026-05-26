# speech_msgs/msg/AgentToSpeechAudioRaw.msg
# Audio raw message for transmitting PCM audio data from Agent to Speech service
# Format: 16KHz sample rate, 16-bit depth, mono channel

# Sample rate in Hz (fixed at 16000 for this message)
uint32 sample_rate

# Number of audio channels (fixed at 1 for mono)
uint32 num_channels

# Bit depth (fixed at 16 bits)
uint32 bit_depth

# Number of samples in this frame
uint32 num_samples

# Frame sequence number for ordering audio frames
uint32 frame_sequence

# Audio signal data (16-bit signed integers, little-endian)
# Each sample is 2 bytes (16 bits)
# Format: [sample1, sample2, sample3, ...]
int16[] audio_data

