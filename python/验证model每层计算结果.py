import torch
from torchvision import transforms
from torchvision.datasets import MNIST
from torch.utils.data import DataLoader
from model import *  # 假设模型定义在lenet5.py中

# 加载模型
model = torch.load('lenet5.pth')

if torch.cuda.is_available():
    device = torch.device("cuda")
    print(f"当前设备: {torch.cuda.get_device_name(torch.cuda.current_device())}")
else:
    device = torch.device("cpu")
    # print("CUDA 不可用，将使用 CPU。")


def evaluate():
    model.eval()
    correct = 0
    total = 0
    with torch.no_grad():
        for images, labels in test_loader:
            images, labels = images.to(device), labels.to(device)  # 将数据移动到CUDA设备
            outputs = model(images)
            _, predicted = torch.max(outputs.data, 1)
            total += labels.size(0)
            correct += (predicted == labels).sum().item()

    accuracy = correct / total
    print(f"Accuracy on test set: {accuracy:.4f}")


# 数据预处理
transform = transforms.Compose([
    transforms.ToTensor(),
    transforms.Normalize((0.5,), (0.5,))
])

# 加载测试数据集
test_dataset = MNIST(root='./data', train=False, transform=transform, download=True)
test_loader = DataLoader(test_dataset, batch_size=1, shuffle=False)

evaluate()


def save_images_to_h(images, filename):
    with open(filename, 'w') as f:
        for image in images:
            f.write(','.join(map(str, image.reshape(-1))) + '\n')


# for name, param in model.conv2.named_parameters():
#      print(name, param)    # 打印节点conv1的参数

# 推理并打印第一个卷积层的输出    数据从测试集中读取
with torch.no_grad():
    for i, (images, labels) in enumerate(test_loader):
        if i == 1:  # 选择第三张图片

            images = images.cuda()  # 将数据移动到GPU上
            image_data = images.cpu().numpy()

            save_images_to_h(image_data, 'img.h')

            # 将单张图片数据保存
            images_array = images.cpu().numpy()
            filename = "param/img.bin"
            with open(filename, 'wb') as f:
                images_array.tofile(f)

            # print(images)
            output = model(images)
            conv1_output = model.conv1(images)  # 获取第一个卷积层的输出
            maxpool1_out = model.maxpool1(conv1_output)
            conv2_output = model.conv2(maxpool1_out)
            maxpool2_out = model.maxpool1(conv2_output)
            conv3_output = model.conv3(maxpool2_out)
            print(maxpool1_out.shape)
            print("maxpool2_out Output :", output)
            break
