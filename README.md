# AutoIT_Example

Platform:
- Windows

Programming language:
- AutoIT script: check autoIT help after installed it

Downloads:
- AutoIT: https://www.autoitscript.com/site/autoit/downloads/
- Cygwin installer from https://www.cygwin.com/
- Jenkins: https://jenkins.io/download/
- Java 11(Jenkins requires java 11): https://www.oracle.com/ca-en/java/technologies/javase/jdk11-archive-downloads.html
- UISpy: https://github.com/2gis/Winium.Cruciatus/tree/master/tools/UISpy


Run autoIT script on jenkins on Windows
- Download jenkins
- Install jenkins
- Start jenkins by
```cd "c:\Program Files (x86)\Jenkins"```
```java -Dhudson.util.ProcessTree.disable=true -jar jenkins.war --httpListenAddress=127.0.0.1 --httpPort=8088 --enable-future-java```
- Compile autoIT script from au3 to x86 or x64 executable
