# Automatic Speech Recognition (ASR) result message
std_msgs/Header header

# Transcribed text from speech recognition
string transcript

# Source of the speech (e.g., "dog", "phone", "signaling")
uint8 DOG=0
uint8 PHONE=1
uint8 SIGNALLING=2

uint8 source_type

# Reject flag (true if the speech should be ignored/rejected)
bool reject

# Recognition confidence score (0.0 to 1.0)
float32 confidence