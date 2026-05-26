# Detection status message with flags and confidence scores
std_msgs/Header header

# Detection flags
bool human_detected     # True if human is detected
bool face_detected      # True if frontal face is detected

# Confidence scores
float32 human_confidence  # Human detection confidence (0.0-1.0)
float32 face_confidence   # Face detection confidence (0.0-1.0)

# Additional information
int32 num_humans_detected  # Number of humans detected in the image
geometry_msgs/Point32 face_center  # Face center position (if face detected)