# web
The model editor that can run on the web is written in SWT and runs on the web based on rap.

## Installation and operation
Execute setup.cmd or setup.sh installation, and execute web.cmd or web.sh after installation.
![enter picture description](https://www.xworker.org/files/2021/1013/083500web_run.jpg  "Enter picture title here")
Generally, an address will be printed after running. Entering the address in the browser will open a login window.
![enter picture description](https://www.xworker.org/files/2021/1013/083646web_login.jpg  "Enter picture title here")
The first time you can directly click the login button, a random password will be created, and then log in with this password.
![enter picture description](https://www.xworker.org/files/2021/1013/084005web_password.jpg  "Enter picture title here")
After logging in, you can enter the main interface.
![enter picture description](https://www.xworker.org/files/2021/1013/084236web_main.jpg  "Enter picture title here")

## Limitations of Web Editor
That is, the limitation of running SWT on rap. For details, please refer to the official website of eclipse. Simply put, some SWT features and controls are not supported, such as styledtext cannot be used, so the code cannot be colored, etc. Xworker has been adapted, and basic editing and running are OK.

## Security
Because the server-side model can be modified, there are security risks, and login authentication needs to be set.
The priority of the following validation methods is loginlistener > weblogin action > default.

### Default
The default user name is admin, and the password is created randomly. The user name and password are set in_ Local.xworker.config.XWorkerConfig model.
If you forget your password, you can use the SWT editor to modify the model or modify the model file manually.
![enter picture description](https://www.xworker.org/files/2021/1013/084933web_modify_password.jpg  "Enter picture title here")

### Weblogin action model
If the local.xworker.config.WebLogin model exists, the model is used as an action to perform verification.
The parameters of the action are loginname and password, the type is string, and the return value is Boolean. True is returned after verification, otherwise false is returned.

### Checking in Java code
The java interface xworker.web.thingeeditor.loginlistener can be implemented and set.
```
import xworker.web.thingeditor.Login;
import xworker.web.thingeditor.LoginListener
LoginListener listener = new LoginListener(){
    public boolean login(String name, String password){
        //Perform verification
    }
}；
Login.loginListener = listener;
```