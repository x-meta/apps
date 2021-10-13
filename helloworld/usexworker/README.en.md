# Use XWorker
Xworker provides multiple model libraries and tools for editing models. Model programming will be simpler and faster through model libraries and tools for editing models.

### 1. Operation
Execute run.cmd or run.sh after installation.
![enter picture description](https://images.gitee.com/uploads/images/2021/0930/103612_83ce40fb_493262.jpeg  "usexworker.jpg")

### 2. Example description
An example is the HelloWorld. DML model, which uses the xworker. Lang. actions. Actions / @ println model to output Hello world!
```
<? xml version="1.0" encoding="utf-8"?>
<Println name="Println" descriptors="xworker.lang.actions.Actions/@Println"
        message="Hello World!">
</Println>
```