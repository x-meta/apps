# Thing Explorer
Thing Explorer也是用来编辑和运行模型的，基本包含了其它所有的模型编辑器。

### 1.引用了大多数的模型库
Thing Explorer引用了几乎所有XWorker的不会冲突的模型库，因此Thing Explorer也包含了SWT、JavaFX和WEB等等模型编辑器，也包含了其它各种各样的模型库。

### 2.作为系统级的模型开发平台
由于Thing Explorer引用了大多数的模型库，因此它的模型库会比较丰富，适合作为系统级的模型开发平台。

作为系统级的开发平台，实际是把Thing Explorer下的dml.cmd或dml.sh放到系统的路径下，从而可以直接执行，另外一般也会把*.dml文件和dml.cmd或dml.sh关联，从而可以直接执行*.dml文件。

要设置为系统级的模型开发平台，可以运行setupenv.cmd或setupenv.sh，也可以手工把dml.cmd或dml.sh放在系统路径下，以及手工配置文件关联。