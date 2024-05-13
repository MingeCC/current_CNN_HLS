import torch
from torch import nn
from torch import nn, optim
from torchvision import datasets, transforms
from torch.utils.data import DataLoader


class LeNet5(nn.Module):
    def __init__(self):
        super(LeNet5, self).__init__()
        self.conv1 = nn.Conv2d(1, 6, 5, stride=1, padding=2, bias=True)
        self.maxpool1 = nn.MaxPool2d(2, 2, 0)
        self.conv2 = nn.Conv2d(6, 16, 5, stride=1, padding=0, bias=True)
        self.maxpool2 = nn.MaxPool2d(2, 2, 0)
        self.conv3 = nn.Conv2d(16, 120, 5, stride=1, padding=0, bias=True)
        self.fc1 = nn.Linear(120, 84)
        self.fc2 = nn.Linear(84, 10)
        self.sequential = nn.Sequential(nn.Conv2d(1, 6, 5, stride=1, padding=2, bias=True),
                                        nn.MaxPool2d(2, 2, 0),
                                        nn.Conv2d(6, 16, 5, stride=1, padding=0, bias=True))
        self.softmax = nn.Softmax(dim=1)

    def forward(self, x):
        x = self.conv1(x)
        # print("conv1:", x.shape)
        x = self.maxpool1(x)
        # print("maxpool1:", x.shape)
        x = self.conv2(x)
        # print("conv2:", x.shape)
        x = self.maxpool2(x)
        # print("maxpool2:", x.shape)
        x = self.conv3(x)
        # print("conv3:", x.shape)
        x = torch.flatten(x, 1)  # 在第1维（通道维度）上展平
        # print("flatten:", x.shape)
        x = self.fc1(x)
        # print("fc1:", x.shape)
        x = self.fc2(x)
        # print("fc2:", x.shape)
        # x = self.softmax(x)
        return x


if __name__ == '__main__':  #
    model = LeNet5()
    input = torch.randn(1, 1, 28, 28)
    output = model(input)
