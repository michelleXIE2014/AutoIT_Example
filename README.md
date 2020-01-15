# AutoIT_Example
Environment:
- AutoIT: https://www.autoitscript.com/site/autoit/downloads/
- Jenkins: https://jenkins.io/download/


Run autoIT script on jenkins on Windows
- Download jenkins
- Install jenkins
- Start jenkins by
```cd "c:\Program Files (x86)\Jenkins"```
```java -Dhudson.util.ProcessTree.disable=true -jar jenkins.war --httpListenAddress=127.0.0.1 --httpPort=8088 --enable-future-java```
- Compile autoIT script from au3 to x86 or x64 executable
