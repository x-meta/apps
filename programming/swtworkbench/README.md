# SWT Workbench
用来编写工作台应用，比如XWorker的SWT版本的模型编辑器就是一个工作台应用。

### 1.简介
工作台应用是基于SWT的，一个工作台可以有菜单、工具栏、视图（左、右、下）、编辑区和状态栏，工作台主一般是用来实现编辑内容的。
![输入图片说明](https://images.gitee.com/uploads/images/2021/0929/143827_e5a581a5_493262.jpeg "swtworkbench.jpg")

#### 1.1.视图
视图是一些SWT的Composite控件，可以显示在视图区或编辑区。视图常常是一个固定的功能区，如基于树的导航菜单、文件结构树、概要和控制台等等。

视图模型可以注册到xworker.workbench.Views模型下，注册的视图可以实现重用。
![输入图片说明](https://images.gitee.com/uploads/images/2021/0929/144143_d2e5db7f_493262.jpeg "workbench_views.jpg")

#### 1.2.编辑器
编辑器用于编辑内容的，如模型编辑器、文件编辑器等等，编辑器一般在编辑区打开。

编辑器模型可以注册到xworker.workbench.Editors模型下，注册的编辑器可以实现重用。
![输入图片说明](https://images.gitee.com/uploads/images/2021/0929/144317_04d03ba9_493262.jpeg "workbench_editors.jpg")

### 2.运行工作台
安装后，执行run.cmd或run.sh开打工作台。

### 3.自定义工作台
#### 3.1.编辑工作台模型
工作台应用执行后，默认会打开工作台模型自己，可以修改它。

![输入图片说明](https://www.xworker.org/files/2021/0910/140208workbench.jpg "在这里输入图片标题")

#### 3.2.应用修改
可以通过菜单重新运行工作台模型。
![输入图片说明](https://images.gitee.com/uploads/images/2021/0929/143840_927b1e80_493262.jpeg "swtworkbenchresatrt.jpg")