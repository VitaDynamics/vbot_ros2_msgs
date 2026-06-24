std_msgs/Header header
uint8 rssi
uint8 ber

# LTE cellular metrics parsed from AT+CPSI (4G only; appended for backward
# compatibility, older subscribers ignore trailing fields).
# lte_valid is false when CPSI is missing or not in LTE+Online mode; in that
# case the cellular fields below are unset (numeric fields NaN / 0).
bool lte_valid
string cell_id        # CPSI SCellID
string pci            # CPSI PCellID (Physical Cell ID)
string band           # CPSI Frequency Band, e.g. "EUTRAN-BAND40"
int32 earfcn          # CPSI EARFCN
int32 rsrp_raw        # CPSI RSRP raw field
float32 rsrp_dbm      # converted dBm, NaN when invalid
int32 rsrq_raw        # CPSI RSRQ raw field
float32 rsrq_db       # converted dB, NaN when invalid
int32 sinr_raw        # CPSI RSSNR raw field (SINR approximation)
float32 sinr_db       # converted dB, NaN when invalid
