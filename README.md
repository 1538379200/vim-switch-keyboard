# vim-switch-keyboard
使用ESC时快速切换成英文输入法

## 环境

- 安装python
- 如果没有设置python环境，在vim中指定python路径
- windows系统中装上英文语言支持，选择美国

![image](https://user-images.githubusercontent.com/42434762/217836339-a937bd8f-6b17-4c7b-a7b9-611e61752163.png)


## 安装

- 使用Packer安装插件：
```lua
use {"1538379200/vim-switch-keyboard"}
```
- 使用通过python安装依赖库
```python
pip install pywin32
```

## 说明

- 在初次使用时，会出现第一次切换，导致光标形状不能切换成普通形式，再进一次输入模式返回普通模式即可

## 后续更新
- 生成windows可执行程序，无需python环境即可运行，但这势必会造成性能上的缺失，待考量
