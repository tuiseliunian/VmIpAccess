#!/bin/bash
## 获取当前目录路径
build_path=$(cd `dirname $0`; pwd)
cd ${build_path}/../target
pwd

export JAVA_HOME=/home/ossuser/workspace/graalvm-ce-java11-22.3.3/bin

export PATH=$JAVA_HOME:$PATH
export CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.

native-image -jar VmIpAccess*.jar
