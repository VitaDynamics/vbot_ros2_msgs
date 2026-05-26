# Core sensor data
IMUState imu_state
MotorCmd[14] relative_motor_cmd     # (12 legs + 2 head)
MotorState[14] motor_state          # (12 legs + 2 head)
int16[4] foot_force
int16[4] foot_force_est

# State synchronization
uint16 state_id
uint16 input_cmd_id
uint64 ts_state_real
uint64 ts_state_pub

# RL related fields
uint16 cmd_id
uint16 input_state_id
uint64 input_state_ts_real
uint64 ts_infer_input_state
uint64 ts_input_cmd_into_motor
uint64 ts_before_infer
uint64 ts_after_infer
float32 max_abs_obs