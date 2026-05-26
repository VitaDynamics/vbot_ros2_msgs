# ADC Info - 电流电压采集数据
# 对应 VitaAdcInfo 结构

# Current channels (5个电流通道: LEG_BL, LEG_FL, LEG_BR, LEG_FR, TOTAL)
int16[5] current_avg          # 平均电流 (mA)
int16[5] current_max          # 最大电流 (mA)
int16[5] current_min          # 最小电流 (mA)
int16[5] current_3sigma_up    # 3σ上限 (mA)
int16[5] current_3sigma_down  # 3σ下限 (mA)

# Voltage channels (16个电压通道)
# MCU_1V8, VCC_REF, VDD_IN, ADC_1, ADC_2, ADC_3, ADC_4,
# V_MOTOR, VDD_24V, VHD_24V, V_LIDAR, VDD_5V, VSIP_5V, VDD_3V3, VDD_PD, MCU_AD13
uint16[16] voltage_avg          # 平均电压 (mV)
uint16[16] voltage_max          # 最大电压 (mV)
uint16[16] voltage_min          # 最小电压 (mV)
uint16[16] voltage_3sigma_up    # 3σ上限 (mV)
uint16[16] voltage_3sigma_down  # 3σ下限 (mV)

# Timestamp and frequency
uint64 timestamp               # 时间戳
uint8 frequency                # 采样频率 (Hz)
