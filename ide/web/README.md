# web
可以运行在WEB上的模型编辑器，使用SWT编写的，基于RAP运行在WEB上。

## 安装和运行
执行setup.cmd或setup.sh安装，安装后执行web.cmd或web.sh。
![输入图片说明](https://www.xworker.org/files/2021/1013/083500web_run.jpg "在这里输入图片标题")

运行后一般会打印一个地址，在浏览器中输入该地址，会打开一个登录窗口。
![输入图片说明](https://www.xworker.org/files/2021/1013/083646web_login.jpg "在这里输入图片标题")

第一次可以直接点击登录按钮，会随机创建一个密码，然后用该密码登录。
![输入图片说明](https://www.xworker.org/files/2021/1013/084005web_password.jpg "在这里输入图片标题")

登陆后可以进入主界面。
![输入图片说明](https://www.xworker.org/files/2021/1013/084236web_main.jpg "在这里输入图片标题")

## WEB编辑器的限制
即RAP上运行SWT的限制，具体可以参看Eclipse的官网。简单来说就是不支持SWT的一些特性和控件，如不能使用StyledText因此代码不能着色等等。XWorker已经做了适配，基本的编辑和运行是可以的。

## 安全
由于可以修改服务器端的模型，存在安全风险，需要设置登录验证。

以下验证方法的优先级是LoginListener > WebLogin动作 > 默认。

### 默认
默认是用户名是admin，密码随机创建。用户名和密码是设置在_local.xworker.config.XWorkerConfig模型下。

如果忘了密码，可以使用SWT编辑器修改模型，或手工修改该模型文件。

![输入图片说明](https://www.xworker.org/files/2021/1013/084933web_modify_password.jpg "在这里输入图片标题")

### WebLogin动作模型
如果_local.xworker.config.WebLogin模型存在，那么把这个模型作为动作执行校验。

动作的参数是loginName和password，类型是String，返回值是boolean，校验通过返回true否则返回false。

### 在Java代码中校验

可以实现Java接口xworker.web.thingeditor.LoginListener，并设置。
```
import xworker.web.thingeditor.Login;
import xworker.web.thingeditor.LoginListener
 
LoginListener listener = new LoginListener(){
     public boolean login(String name, String password){
        //执行校验
     }
}；
 
Login.loginListener = listener;
```