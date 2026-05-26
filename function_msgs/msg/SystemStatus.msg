# SystemStatus.msg
# Strongly-typed message for system-wide status
# Based on global_context_keys.h system status fields

uint8 screen_brightness         # Screen brightness level (0-100)
uint8 volume                    # Volume level (0-100)
uint8 fill_light_brightness     # Fill light brightness level (0-100)
bool butt_touch_status          # Butt touch enable status (true/false)
bool head_touch_status          # Head touch enable status (true/false) - controls Sentry Enable
bool isp_adjust_enable         # ISP adjust light brightness enable status (true/false)

# Speech service configuration
uint8 chat_function_enabled     # Chat function enabled status (0=disabled, 1=enabled)
uint8 cmd_recognition_enabled   # Command word recognition route (0=disabled, 1=speech_service, 2=doubao_agent)

# Ego state estimation (added at end to maintain struct layout compatibility)
bool robot_is_static            # Robot is statically placed (not moving)
float64 static_duration         # Duration in seconds that the robot has been stationary

uint8 continuous_cmd_enabled    # Continuous command recognition enabled status (0=disabled, 1=enabled)
bool dvr_recording_enabled      # DVR recording switch status (true=enabled, false=disabled)

# Manual/Joy override active (true when user joystick/twist input is overriding)
bool joy_override_active

# Agent notifier enable status (true when agent notifications are enabled)
bool agent_enable

# Music recording status (true when music recording is active, false otherwise)
bool music_recording

# Charging sleep auto trigger enable status
bool charging_sleep_enable

# Pose sleep auto trigger enable status
bool pose_sleep_enable

# Lowlevel recovery result (0=IN_PROCESS, 1=SUCCESS, 2=FAILED)
uint8 lowlevel_recovery_result

# Avatar mode active status (true when avatar mode is active, false otherwise)
bool avatar_active

# Network state (0=UNKNOWN, 1=WIFI, 2=4G)
uint8 NETWORK_STATE_UNKNOWN = 0
uint8 NETWORK_STATE_WIFI = 1
uint8 NETWORK_STATE_4G = 2
uint8 network_state

# wakeup and turn status (true when wakeup_turn is active, false otherwise)
bool wakeup_turn

# Store mode active status (true when store mode is active, false otherwise)
bool store_mode
