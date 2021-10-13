# Thing Explorer
It contains almost all non conflicting model libraries in xworker, as well as other ides. It can be used as a system level model development platform.

## Installation and operation
Execute setup.cmd or setup.sh installation. After installation, you can execute SWT, web or JavaFX model editor.
- [swt](../swt/) 

Execute swt.cmd or swt.sh to open the model editor of SWT version.
- [web](../web) 

Execute web.cmd or web.sh to open the web version of the model editor.
- [javafx](../javafx) 

Execute javafx.cmd or javafx.sh to open the JavaFX version of the model editor.

## Set as a system level model development platform
Run setupevn.cmd or setupenv.sh to set it as a system level development platform.

### System level model development platform
Setupenv usually does the following.
- You can directly execute dml.cmd or dml.sh

Set dml.cmd or dml.sh to the system path so that dml.cmd or dml.sh can be executed directly.
- You can execute *. DML files directly

Associate the * DML file with dml.cmd or dml.sh to directly execute the *. DML file. If the mouse double clicks a DML file, it can be executed.

- Set the system environment variable xmeta_ Home is the current path

When the model engine is initialized in Java code, xmeta is used if the path of the engine is set to null_ The home system environment variable is used as the path to the engine.