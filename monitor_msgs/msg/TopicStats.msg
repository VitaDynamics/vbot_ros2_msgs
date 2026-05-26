# 单个Topic统计数据
uint64 timestamp                   # Unix时间戳（纳秒，epoch时间）
string topic_name                  # Topic名称（去掉rt前缀）
string type_name                   # 消息类型名称
float32 hz                         # 频率 (Hz)
float32 throughput                 # 吞吐量 (bytes/sec)
uint32 min_size                    # 最小消息大小
uint32 max_size                    # 最大消息大小
uint32 avg_size                    # 平均消息大小
float32 min_delta                  # 最小时间间隔（秒）
float32 max_delta                  # 最大时间间隔（秒）
float32 std_dev                    # 标准差（秒）
bool is_active                     # 是否活跃（5秒内有消息）
