echo "Copy liberarys."
mvn package

echo "Unzip resources."
java -cp ./lib/mvn/xworker_startup-2.0.0-SNAPSHOT.jar xworker.startup.Startup ./ xworker.lang.thingeditor.Setup run

echo Setup finished.
