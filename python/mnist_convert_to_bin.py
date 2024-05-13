import pickle
import numpy as np
from torchvision.datasets import MNIST
from torch.utils.data import DataLoader
from torchvision.transforms import transforms

# 数据预处理
transform = transforms.Compose([
    transforms.ToTensor(),
    transforms.Normalize((0.5,), (0.5,))
])

# 加载测试数据集
test_dataset = MNIST(root='./data', train=False, transform=transform, download=True)
test_loader = DataLoader(test_dataset, batch_size=1, shuffle=False)

# 将图像和标签保存为二进制文件
images_array = []
labels_array = []
for images, labels in test_loader:
    images_array.append(images.numpy())
    labels_array.append(labels.numpy())

with open('param/mnist_data.bin', 'wb') as f:
    data = {'images': images_array, 'labels': labels_array}
    pickle.dump(data, f)

# 从二进制文件加载图像和标签
loaded_data = {}
with open('param/mnist_data.bin', 'rb') as f:
    loaded_data = pickle.load(f)

loaded_images = loaded_data['images']
loaded_labels = loaded_data['labels']

# 循环读取每个图像和标签
for i, (image, label) in enumerate(zip(loaded_images, loaded_labels)):
    # 将图像数据转换为28x28的形状
    image_array = np.array(image).reshape(28, 28)
    # 打印图像数组的形状和标签
    print(f"Image {i + 1} - Shape: {image_array.shape}, Label: {label}")

    # 在这里进行你想要的处理，比如保存数组、进一步处理等
    # 这里只是打印图像数组的形状和标签作为示例
