# Action
动作(Action)相当于函数和方法，动作可以执行。常用于实现对象模型的行为，也可以直接用来编写应用。

本示例是直接用动作模型来编写应用的。

### 1.运行模式
动作模型的属性mode用于设置运行模式，mode=edit是编辑模式，mode=run是运行模式。

初始的要运行的动作模型是Action.dml，默认的运行方式是edit。

#### 1.1.编辑模式
即执行后打开编辑器编辑动作模型自己。

![输入图片说明](https://www.xworker.org/files/2021/0913/163524action_edit.jpg "在这里输入图片标题")

可以在编辑器中通过菜单运行动作模型。

![输入图片说明](https://www.xworker.org/files/2021/0913/163637action_edit_run.jpg "在这里输入图片标题")

#### 1.2.运行模型

把mode设置为run，执行后不会打开编辑器，而是执行动作模型本身。如下图。

![输入图片说明](https://www.xworker.org/files/2021/0913/164150action_run.jpg "在这里输入图片标题")