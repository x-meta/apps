# Use XWorker
XWorker提供了多个模型库和编辑模型的工具，通过模型库和编辑模型的工具会让模型编程更简单快捷。

### 1.运行
安装后执行run.cmd或run.sh。
![输入图片说明](https://images.gitee.com/uploads/images/2021/0930/103612_83ce40fb_493262.jpeg "usexworker.jpg")

### 2.示例说明
示例是HelloWorld.dml模型，它使用了xworker.lang.actions.Actions/@Println模型来输出Hello World!
```
<?xml version="1.0" encoding="utf-8"?>
 
<Println name="Println" descriptors="xworker.lang.actions.Actions/@Println"
      message="Hello World!">
</Println>
```