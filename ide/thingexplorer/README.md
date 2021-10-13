# Thing Explorer
包含了XWorker中几乎所有的不会冲突的模型库，也包含其它IDE。可以作为系统级的模型开发平台。

## 安装和运行
执行setup.cmd或setup.sh安装，安装后可以执行swt、web或javafx的模型编辑器。

- [swt](../swt/)
执行swt.cmd或swt.sh打开SWT版的模型编辑器。

- [web](../web)
执行web.cmd或web.sh打开WEB版的模型编辑器。

- [javafx](../javafx)
执行javafx.cmd或javafx.sh打开JavaFX版的模型编辑器。

## 设置为系统级的模型开发平台
运行setupevn.cmd或setupenv.sh来设置为系统级的开发平台。

### 系统级的模型开发平台
setupenv一般会做下面的事项。
- 可以直接执行dml.cmd或dml.sh
把dml.cmd或dml.sh设置到系统路径下，从而可以直接执行dml.cmd或dml.sh。

- 可以直接执行*.dml文件
把*dml文件和dml.cmd或dml.sh关联，从而可以直接执行*.dml文件。如鼠标双击一个dml文件可以执行它。

- 设置系统环境变量XMETA_HOME为当前路径
当在Java代码中初始模型引擎时，如果引擎的路径设置为null，那么会使用XMETA_HOME系统环境变量作为引擎的路径。