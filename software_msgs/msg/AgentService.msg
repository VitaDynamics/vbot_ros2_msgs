uint8     AGENT_CMD_PARAM_UPLOAD = 1    # 参数文件上传
uint8     DIAGNOSE_CODE_UPLOAD = 2      # 诊断码上传

int64     timestamp
uint8     cmd
string    type
string    payload
string[]  reserved
