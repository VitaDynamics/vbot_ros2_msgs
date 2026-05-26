# foxglove_msgs/msg/FaultTypeStatus

# Enumerations for status
uint8 OCCUR=1
uint8 RESTORE=2

uint8 status

# Enumerations for SM fault type
uint8 FUNCTION_IGNORE=0
uint8 FUNCTION_QUIT=1
uint8 FUNCTION_MRM=2
uint8 FUNCTION_DEBUG=3

uint8 sm_fault_type

# Enumerations for HMI fault type
uint8 HMI_IGNORE=4
uint8 HMI_SENSOR=5
uint8 HMI_SOFTWARE=6
uint8 HMI_HARDWARE=7
uint8 HMI_SENSOR_OVERTEMP=8
uint8 HMI_HARDWARE_OVERTEMP=9
uint8 HMI_STORAGE_INSUFFIC=10

uint8 hmi_fault_type

# Custom payload for domain-specific data (e.g., fault_id bytes)
uint8[] user_data
