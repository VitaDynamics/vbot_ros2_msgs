std_msgs/Header header

# 系统运行模式
uint8 MODE_UNKNOWN=0      # 未知/未初始化
uint8 MODE_ODOMETRY=1     # 纯里程计模式(不用地图)
uint8 MODE_MAPPING=2      # 建图模式(含定位)
uint8 MODE_LOCALIZATION=3 # 纯定位模式(基于地图)
uint8 operation_mode      # 当前运行模式

# 定位状态
uint8 LOC_STATUS_UNKNOWN=0     # 未知/未初始化
uint8 LOC_STATUS_INIT=1        # 正在初始化
uint8 LOC_STATUS_WAITING=2     # 等待定位
uint8 LOC_STATUS_TRACKING=3    # 跟踪正常
uint8 LOC_STATUS_LOST=4        # 跟踪丢失
uint8 LOC_STATUS_RELOC=5       # 重定位中
uint8 loc_status               # 当前定位状态

# 建图状态 
uint8 MAP_STATUS_IDLE=0       # 未建图
uint8 MAP_STATUS_MAPPING=1    # 正在建图
uint8 MAP_STATUS_LOOP=2       # 回环检测/优化中
uint8 MAP_STATUS_SAVING=3     # 地图保存中
uint8 map_status              # 当前建图状态

# 运行时信息
float32 tracking_quality     # 跟踪质量 [0,1]
string context               # 状态描述/错误信息
uint32 map_id                # 当前地图ID
float32 mileage              # 本次上电周期里程
float32 accumulated_mileage  # 累积总里程（含历史）

# 统计信息
uint32 num_keyframes       # 关键帧数量
uint32 num_landmarks       # 路标点数量
float32 process_time       # 处理耗时(ms)
float32 cpu_usage          # CPU使用率(%)
float32 mem_usage          # 内存使用(MB)

# GPS 融合状态
uint8 GPS_ALIGN_DISABLED=0    # GPS 融合未启用
uint8 GPS_ALIGN_ALIGNING=1    # GPS 融合启用但未对齐
uint8 GPS_ALIGN_ALIGNED=2     # GPS 融合启用且已对齐
uint8 gps_align_status        # GPS 对齐状态