byte FAULT_OCCUR = 0
byte FAULT_RESTORE = 1
byte status


byte S0_INFO = 0
byte S1_WARNING = 1
byte S2_DEGRADED = 2
byte S3_ERROR = 3
byte S4_FATAL = 4
byte level

uint32 fault_id  
int64 timestamp
string message
uint32 soc_id