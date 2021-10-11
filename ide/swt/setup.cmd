echo Copy liberarys.
call mvn package

echo Unzip resources.
java -cp ./lib/mvn/xworker_startup-1.0.1-SNAPSHOT.jar xworker.startup.Startup ./ xworker.thingeditor.Setup run

echo Setup finished.

