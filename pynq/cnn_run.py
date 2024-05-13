def Run_Conv(conv_ip, chin, chout, kx, ky, win, hin, stride, padding, feature_in, weight, bias, feature_out):
    conv_ip.write(0x10, chin)
    conv_ip.write(0x18, chout)
    conv_ip.write(0x20, kx)
    conv_ip.write(0x28, ky)
    conv_ip.write(0x30, win)
    conv_ip.write(0x38, hin)
    conv_ip.write(0x40, stride)
    conv_ip.write(0x48, padding)
    conv_ip.write(0x50, feature_in.physical_address)
    conv_ip.write(0x58, weight.physical_address)
    conv_ip.write(0x68, bias.physical_address)
    conv_ip.write(0x60, feature_out.physical_address)
    conv_ip.write(0, (conv.read(0)&0x80)|0x01 ) #start conv IP
    while True:
        if conv_ip.read(0x00) & 0x2:  # 检查 ap_done 位
            print('done')
            break
            
def Run_maxpool2D(pool, chin, h, w, feature_in, feature_out):
    pool.write(0x10,h)
    pool.write(0x18,w)
    pool.write(0x20,chin)
    pool.write(0x28,feature_in.physical_address)
    pool.write(0x30,feature_out.physical_address)
    pool.write(0, (pool.read(0)&0x80)|0x01 ) #start conv IP
    while True:
        if pool.read(0x00) & 0x2:  # 检查 ap_done 位
            print('done')
            break
            
def load_param():
    with open("model_bin_param/conv1.weight.bin", 'rb') as f:
        data = f.read()
        # 使用 NumPy 从二进制数据中解析数组
        conv_w1_array = np.frombuffer(data, dtype=np.float32)  # 假设数据类型为 float32
        conv_w1 = conv_w1_array.reshape(6, 1, 5, 5)
    # print(conv_w1)

    with open("model_bin_param/conv1.bias.bin", 'rb') as f:
        data = f.read()
        conv_b1_array = np.frombuffer(data, dtype=np.float32)  
        conv_b1 = conv_b1_array
    # print(conv_b1)

    with open("model_bin_param/conv2.weight.bin", 'rb') as f:
        data = f.read()
        conv_w2_array = np.frombuffer(data, dtype=np.float32)  
        conv_w2 = conv_w2_array.reshape(16, 6, 5, 5)
    # print(conv_w2)

    with open("model_bin_param/conv2.bias.bin", 'rb') as f:
        data = f.read()
        conv_b2_array = np.frombuffer(data, dtype=np.float32)  
        conv_b2 = conv_b2_array
    # print(conv_b2)       

    with open("model_bin_param/conv3.weight.bin", 'rb') as f:
        data = f.read()
        conv_w3_array = np.frombuffer(data, dtype=np.float32)  
        conv_w3 = conv_w3_array.reshape(120, 16, 4, 4)
    # print(conv_w3)  

    with open("model_bin_param/conv3.bias.bin", 'rb') as f:
        data = f.read()
        conv_b3_array = np.frombuffer(data, dtype=np.float32)  
        conv_b3 = conv_b3_array
    # print(conv_b3)    

    with open("model_bin_param/fc1.weight.bin", 'rb') as f:
        data = f.read()
        conv_w4_array = np.frombuffer(data, dtype=np.float32)  
        conv_w4 = conv_w4_array.reshape(84,120)
    # print(conv_w4)  

    with open("model_bin_param/fc1.bias.bin", 'rb') as f:
        data = f.read()
        conv_b4_array = np.frombuffer(data, dtype=np.float32)  
        conv_b4 = conv_b4_array
    # print(conv_b4)     

    with open("model_bin_param/fc2.weight.bin", 'rb') as f:
        data = f.read()
        conv_w5_array = np.frombuffer(data, dtype=np.float32)  
        conv_w5 = conv_w5_array.reshape(10,84)
    # print(conv_w5)

    with open("model_bin_param/fc2.bias.bin", 'rb') as f:
        data = f.read()
        conv_b5_array = np.frombuffer(data, dtype=np.float32)  
        conv_b5 = conv_b5_array
    # print(conv_b5)
    
    