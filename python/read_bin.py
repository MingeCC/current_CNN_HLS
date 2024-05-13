import numpy as np

# 读取 .bin 文件的路径
bin_file_path = "param/bin/conv1.weight.bin"

# 读取 .bin 文件中的数据
with open(bin_file_path, 'rb') as f:
    # 读取二进制数据
    data = f.read()
    # 使用 NumPy 从二进制数据中解析数组
    array = np.frombuffer(data, dtype=np.float32)  # 假设数据类型为 float32
    # array = array.reshape(6, 1, 5, 5)
# 打印数组
print("Array from .bin file:")
print(array)
