# noxworker
The model library of xworker is not referenced, but the Hello world example of dynamic model engine is introduced.

### 1. Operation
After installation, execute run.cmd or run.sh. After execution, you should be able to see the output Hello world in the terminal.
![enter picture description](
    https://images.gitee.com/uploads/images/2021/0930/102619_b60909dc_493262.jpeg  "noxworker.jpg")
### 2. Example model description
The example model is helloworld.dml, which defines a run method, and the runtime compiles and executes the Java code in the run model.
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