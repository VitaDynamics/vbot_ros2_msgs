
# ClipItem.msg

# item 类型, true: 图片, false: 文本
bool type

# item 文本, 仅item为文本时有效
string text

# item 文件路径地址, 仅item为图片时有效
string url

# item 对应的特征值
float32[] feature

# item 额外信息
string[] extra