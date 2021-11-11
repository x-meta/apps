# apps
### Introduction
Some applications written using dynamic model and xworker's model library.
- There are multiple applications, and each application is relatively independent.
- The application here can be regarded as an example of dynamic model and xworker.
- The applications here can basically be used in Java projects.
- The applications here can basically be redeveloped, and some applications themselves are development platforms.
- Many applications here may not be very mature. If possible, please participate in the development and improvement together.

### Installation tutorial
Required [Java 1.8 or above](https://www.oracle.com/java/technologies/) and [Maven](https://maven.apache.org/), please install Java and Maven by yourself. You need to be able to directly execute **java** and **mvn** commands in the system terminal.

#### 1. Installation
- 1) clone or download the project to a directory.
- 2) this project contains multiple applications. Enter the directory of one application in the system terminal.
- 3) execute setup.cmd or setup.sh to install the application.

If you do not have executable permission to execute setup.sh, you can execute the Chmod 775 setup.sh command to set setup.sh to be executable.

#### 2. Upgrade
Update the project, obtain the latest version, and execute the following command in the system terminal.
```
mvn clean
setup.cmd or setup.sh
```
The mvn clean command empties the. /lib/mvn/directory and. /lib_rap/ directory, setup.cmd or setup.sh will copy the dependency to ./lib/mvn/ directory again.

#### 3. Add other class libraries
You can modify pom.xml to add other class libraries, or copy the class libraries to the. / lib / directory.

### Instructions for use
#### 1. Model Editor
Most applications include a model editor. If you want to open the model editor, you can run one of the following commands.
- Swt.cmd or swt.sh
The model editor written in SWT is the recommended model editor at present.
- Web.cmd or web.sh
The model editor that can run on the web is also written in SWT and runs on the web based on rap.
- Javafx.cmd or javafx.sh
The JavaFX version of the model editor is currently basically available.
Depending on the referenced model libraries, the above commands may exist at the same time or only individually.
If an application does not import the model editor and wants to edit the model, you can add the dependency of the model editor in pom.xml, and then re setup. To import the model editor, see [SWT]（ http://https://gitee.com/xworker/apps/tree/master/programming/swt )。

#### 2. Run the application
If run.cmd or run.sh exists in the application directory, you can run the current application directly through it.
#### 3. Other scripts
- Dml.cmd or dml.sh
Basic script. Other scripts are implemented based on it. You can use it to execute models or model files.
```
//Execution model, the path and method name of the execution model. If the method name is run, it can be omitted, such as:
dml.cmd xworker.example.ExampleMain run
//Execute the model file and specify the path and method name of the model file. If the method name is run, it can be omitted, such as:
dml.cmd Workench.dml
```
- Setupenv.cmd or setupenv.sh
Taking the current application as a system level development platform requires administrator privileges to execute.
After the command is executed, dml.cmd or dml.sh will be added to the system path. If possible, the *. DML file will be associated with dml.cmd or dml.sh, so that the DML command or *. DML file can be executed directly.

### Thing Explorer
The application located in /ide/thingeexplorer can be used as the development platform of the overall dynamic model. Compared with SWT, web and JavaFX, several model editors only refer to relevant model libraries, while thingeexplorer refers to almost all non conflicting model libraries in xworker, which can be used as the general dynamic model development platform.
To use thingeexplorer as the general development platform, you can execute setupenv.cmd or setupenv.sh below it.