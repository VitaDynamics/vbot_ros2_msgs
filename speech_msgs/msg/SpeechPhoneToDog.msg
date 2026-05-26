# speech_msgs/msg/SpeechPhoneToDog.msg
# Speech message for receiving audio data from phone to dog
# Supports both mono and stereo audio with flexible sample rates

# Frame sequence number for ordering audio frames
uint32 frame_sequence

# Sample rate in Hz (e.g., 16000, 22050, 44100, 48000)
uint32 sample_rate

# Bit depth (16 bits)
uint32 bit_depth

# Number of channels (1 for mono, 2 for stereo)
uint32 num_channels

# Number of samples per channel in this frame
# For mono: this is the total number of samples
# For stereo: this is the number of samples per channel (left/right)
uint32 num_samples

# Audio data (16-bit signed integers, little-endian)
# Each sample is 2 bytes (16 bits)
# For mono audio: contains num_samples values
# For stereo audio: contains num_samples * 2 values (interleaved L/R/L/R...)
# Special control signals:
# - 0x5555: Start transmission signal (num_samples = 1)
# - 0xaaaa: End transmission signal (num_samples = 1)
int16[] audio_data
