
#!/bin/sh

#引数１つ目がパッケージ名
#引数2つ目が実行クラスファイル

WS=$(cd $(dirname $0);pwd)
PKG=${WS}/src/$1
CLASSPATH=$JAVA_LIB/*
SOURCEPATH=$PKG/src
CLASS=$2

javac -classpath ${CLASSPATH}:${SOURCEPATH}: ${SOURCEPATH}/${CLASS//"."/"/"}.java
java -cp ${CLASSPATH}:${SOURCEPATH}: org.ros.RosRun $2
