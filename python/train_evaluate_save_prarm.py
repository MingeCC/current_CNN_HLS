from model import *

if torch.cuda.is_available():
    device = torch.device("cuda")
    print(f"当前设备: {torch.cuda.get_device_name(torch.cuda.current_device())}")
else:
    device = torch.device("cpu")
    print("CUDA 不可用，将使用 CPU。")

transform = transforms.Compose([
    transforms.ToTensor(),
    transforms.Normalize((0.5,), (0.5,))
])

train_dataset = datasets.MNIST(root='./data', train=True, transform=transform, download=True)
test_dataset = datasets.MNIST(root='./data', train=False, transform=transform, download=True)

train_loader = DataLoader(train_dataset, batch_size=64, shuffle=True)
test_loader = DataLoader(test_dataset, batch_size=64, shuffle=False)

# 初始化模型、损失函数和优化器
model = LeNet5().to(device)  # 将模型移动到CUDA设备
criterion = nn.CrossEntropyLoss()
optimizer = optim.Adam(model.parameters(), lr=0.001)


# 训练模型
def train():
    num_epochs = 5
    for epoch in range(num_epochs):
        model.train()
        running_loss = 0.0
        for images, labels in train_loader:
            images, labels = images.to(device), labels.to(device)  # 将数据移动到CUDA设备
            optimizer.zero_grad()
            outputs = model(images)
            loss = criterion(outputs, labels)
            loss.backward()
            optimizer.step()
            running_loss += loss.item() * images.size(0)
        epoch_loss = running_loss / len(train_loader.dataset)
        print(f"Epoch [{epoch + 1}/{num_epochs}], Loss: {epoch_loss:.4f}")

    torch.save(model, 'lenet5.pth')


# 在测试集上评估模型
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


def param_to_bin():
    # 将每个节点的参数保存为 .bin 文件
    for name, param in state_dict.items():
        # 将参数转换成 numpy 数组
        param_array = param.cpu().numpy()

        # 定义保存的文件名
        filename = (f"./param/bin/"
                    f"{name}.bin")

        # 保存参数为 .bin 文件
        with open(filename, 'wb') as f:
            param_array.tofile(f)

    print("Parameters saved as .bin files.")


def param_to_h():
    # 逐个保存参数节点为h文件
    for name, param in state_dict.items():
        # 将参数转换成numpy数组，并展平为一维
        param_array = param.cpu().numpy().flatten().tolist()

        # 定义保存的文件名
        filename = f"./param/h/{name}.h"

        # 将参数写入txt文件，使用逗号和换行符分隔
        with open(filename, 'w') as f:
            f.write(',\n'.join(map(str, param_array)))

        print(f"Parameter saved as h file: {filename}")

    print("All parameters saved as h files.")


if __name__ == '__main__':
    # train()
    model = torch.load('lenet5.pth')
    state_dict = model.state_dict()
    evaluate()
    param_to_h()
