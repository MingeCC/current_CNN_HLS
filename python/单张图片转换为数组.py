import numpy as np


# 从解压后的文件加载数据的函数
def load_mnist_images(filename):
    with open(filename, 'rb') as f:
        # 跳过前面16个字节的头部信息
        f.seek(16)
        # 加载所有图像数据并按行平铺
        images = np.frombuffer(f.read(), dtype=np.uint8)
    return images.reshape(-1, 28, 28)  # 28x28的二维矩阵


def load_mnist_labels(filename):
    with open(filename, 'rb') as f:
        # 跳过前面8个字节的头部信息
        f.seek(8)
        # 加载所有标签数据
        labels = np.frombuffer(f.read(), dtype=np.uint8)
    return labels


# 加载测试集的图像和标签
test_images = load_mnist_images('data/MNIST/raw/t10k-images-idx3-ubyte')
test_labels = load_mnist_labels('data/MNIST/raw/t10k-labels-idx1-ubyte')

# 选择测试集中的第一张图像和对应的标签
num = 1
image = test_images[num]  # 第一个图像
label = test_labels[num]  # 第一个标签


def save_one_image(image, label):
    # 将图像参数保存为txt文件
    filename = 'img.h'
    with open(filename, 'w') as f:
        f.write(',\n'.join(map(str, image.reshape(-1))))

    print("图像参数已保存到", filename)
    # 打印对应的标签
    print("标签:", label)


def save_images_to_h(images, filename):
    with open(filename, 'w') as f:
        for image in images:
            f.write(','.join(map(str, image.reshape(-1))) + '\n')


# save_images_to_h(test_images, 'all_test_img.h')

save_one_image(image, label)
