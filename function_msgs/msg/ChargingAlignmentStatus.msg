# ChargingAlignmentStatus.msg
# 充电对齐状态消息 - MPC精调阶段对齐诊断信息
# 下游可根据 aligned 字段绘制目标框并变色

# 对齐标志：0=未对齐, 1=已对齐 (x/y/theta 均在阈值内)
uint8 aligned

# ── 固定目标框 (像素坐标, 位置不随二维码移动) ──
# 框中心 = 完美对齐时二维码应出现的图像位置 (由 offset 参数逆投影)
float64 target_x
float64 target_y
# 目标框宽高 (像素, 由 pose 阈值逆投影)
float64 target_width
float64 target_height

# ── 二维码实际位置 (像素坐标, 跟随检测结果移动) ──
float64 qr_center_x
float64 qr_center_y
float64 qr_side_length

# 补偿后位姿信息 (米/度)
float64 pose_x
float64 pose_y
float64 pose_theta

# 原始检测位姿 (米/度，未补偿)
float64 raw_pose_x
float64 raw_pose_y
float64 raw_pose_theta

# 充电片接触状态
bool left_contact
bool right_contact

# 充电片接触面积 (平方米)
float64 left_contact_area
float64 right_contact_area

# 阈值判定
bool x_in_range
bool y_in_range
bool theta_in_range
