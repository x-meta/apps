# apps

### 介绍
使用动态模型和XWorker的模型库编写的一些应用。

- 这里有多个应用，这些应用都是相对独立的。
- 可以把这里的应用看作是XWorker的示例。
- 这里的应用基本都可以在Java项目中使用。
- 这里的应用基本都可以进行二次开发，有一些应用本身就是开发平台。
- 这里的应用很多可能并不是很成熟，如有可能请参与一起开发。

### 安装教程
需要[Java](https://www.oracle.com/java/technologies/)和[Maven](https://maven.apache.org/)，请自行安装Java和Maven，需要在系统终端里能够直接执行java和mvn两个命令。

#### 1. 安装

- a. 克隆或者下载本项目到一个目录下。
- b. 本项目包含多个应用，在系统终端里进入其中一个应用的目录。
- c. 执行setup.cmd或setup.sh来安装应用。

如果执行setup.sh没有可执行权限，那么可以执行chmod 775 setup.sh命令设置setup.sh为可执行。

#### 2. 升级

更新本项目，获取最新代码，在系统终端里执行下面命令。

```
mvn clean
setup.cmd或setup.sh
```
mvn clean命令会清空./lib/mvn/目录和./lib_rap/目录，setup.cmd或setup.sh会重新拷贝依赖到./lib/mvn/目录下。

#### 3. 添加其它类库
可以修改pom.xml添加其它类库，也可以把类库拷贝到./lib/目录下。

### 使用说明
#### 1. 模型编辑器
大部分应用都包含了模型编辑器，如果要打开模型编辑器，可以运行下面的命令之一。
- swt.cmd或swt.sh
使用SWT编写的模型编辑器，是目前推荐使用的模型编辑器。
- web.cmd或web.sh
可以在WEB上运行的模型编辑器，也是使用SWT编写的，基于RAP运行在WEB上。
- javafx.cmd或javafx.sh
JavaFX版本的模型编辑器，目前处于基本可用状态。

根据引用的模型库的不同，以上命令可能同时存在，也有可能只有个别存在。

#### 2. 运行应用

如果应用目录下存在run.cmd或run.sh，那么可以通过它直接运行当前应用。

#### 3. 其它脚本
- dml.cmd或dml.sh

基本脚本，其它脚本都是基于它来实现的。可以用它来执行模型或模型文件。

```
//执行模型，执行模型的路径和方法名，其中方法名如果是run则可以省略，如：
dml.cmd xworker.example.ExampleMain run

//执行模型文件，指定模型文件的路径和方法名，其中方法名如果是run则可以省略，如：
dml.cmd Workench.dml
```

- setupenv.cmd或setupenv.sh

把当前的应用作为系统级的开发平台，需要管理员权限来执行。

这个命令执行后会把dml.cmd或dml.sh加入到系统路径下，如有可能还会把*.dml文件和dml.cmd或dml.sh关联，从而可以直接执行dml命令或直接执行*.dml文件。

### Thing Explorer
位于/programming/thingexplorer的应用可以作为总的动态模型的开发平台。相比swt、web和javafx几个模型编辑器只引用了相关的模型库，而thingexplorer引用了XWorker中几乎所有的不会冲突的模型库，可以把它作为总的动态模型开发平台。

如要把thingexplorer作为总的开发平台，可以执行它下面的setupenv.cmd或setupenv.sh。
