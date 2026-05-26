# rst of state confirm
int32 OK = 0
int32 REFUSED = 1

# APP inquire, needs to match the state machine configuration
string app_name
# Function group name
string fg_name
# State name 
string state
# ok means confirmation is successful, refused means confirmation is rejected
int32 rst