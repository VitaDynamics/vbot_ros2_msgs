std_msgs/Header header

uint8 STATUS_UNKNOWN=0     # 未知/未初始化
uint8 STATUS_RUNNING=1     # 正在运行
uint8 STATUS_ERROR=2       # 出现错误
uint8 STATUS_COMPLETED=3   # 标定完成
uint8 STATUS_FAILED=4      # 标定失败

uint8 status               # 当前标定状态
uint8 mode                 # 当前标定模式

string context        # 标定状态文本