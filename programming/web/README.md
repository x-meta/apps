# WEB
WEB版的模型编辑器，可以在浏览器中编写和运行服务器上的模型。WEB版的模型编辑器也是SWT版的模型编辑器，是基于RAP运行在WEB上的。

### 1.运行
安装后执行web.cmd或web.sh。

### 2.在网页中打开工作台URL
运行后，在控制台的日志中，找到工作台的URL，然后在浏览器中打开。

![输入图片说明](https://images.gitee.com/uploads/images/2021/0929/152139_4ff28bac_493262.jpeg "web.jpg")

### 3.登录工作台
网页打开后默认是一个登录界面，用户名默认是admin，第一次在点击登录时会随机创建一个密码。
![输入图片说明](https://images.gitee.com/uploads/images/2021/0929/152408_088020d3_493262.jpeg "web_login.jpg")

用户名密码验证通过后打开工作台界面。
![输入图片说明](https://images.gitee.com/uploads/images/2021/0929/162501_98b355ed_493262.jpeg "webworkbench.jpg")

### 4.安全
由于可以修改服务器端的模型，存在安全风险，需要设置登录验证。

以下验证方法的优先级是LoginListener > WebLogin动作 > 默认。

#### 4.1.默认
默认是用户名是admin，密码随机创建。用户名和密码是设置在_local.xworker.config.XWorkerConfig模型下。

#### 4.2.WebLogin动作模型
如果_local.xworker.config.WebLogin模型存在，那么把这个模型作为动作执行校验。

动作的参数是loginName和password，类型是String，返回值是boolean，校验通过返回true否则返回false。

#### 4.3.在Java代码中校验
可以实现接口xworker.web.thingeditor.LoginListener，并设置。

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

