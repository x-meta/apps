# noxworker
不引用XWorker的模型库，只引入动态模型引擎的Hello World示例。

### 1.运行
安装后执run.cmd或run.sh，执行后应该可以在终端中看到输出的Hello World。

![输入图片说明](https://images.gitee.com/uploads/images/2021/0930/102619_b60909dc_493262.jpeg "noxworker.jpg")

### 2.示例模型说明
示例模型是HelloWorld.dml，模型定义一个run方法，运行时会编译和执行run模型中的Java代码。

```
<?xml version='1.0' encoding='utf-8'?>

<Person name="HelloWorld">
    <actions>
        <JavaAction name="run" useOuterJava="false" className="HelloWorld" methodName="run">
            <code><![CDATA[import org.xmeta.ActionContext;

public class HelloWorld{
    public static void run(ActionContext actionContext){
        System.out.println("Hello World!");
    }
}]]></code>
        </JavaAction>
    </actions>
</Person>
```
