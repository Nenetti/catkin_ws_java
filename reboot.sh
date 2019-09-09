#!/bin/sh
WS=$(cd $(dirname $0);pwd)
classes=`find ${WS} -maxdepth 10 -type f -name *.class`
for class in $classes;
 do
   rm $class
done
