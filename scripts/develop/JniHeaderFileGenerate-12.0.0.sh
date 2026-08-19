#!/bin/sh
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home
export MAVEN_HOME=/Users/yangwen/my/service/maven/apache-maven-3.8.1
export PATH=:$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin


version=12.0.0
rootDir=$PWD/../..
workDir=$rootDir/jcudax-$version/src/main/java
headerFileDir=$rootDir/jcudax-natives-$version/src/main/c

cd $workDir
javah -d $headerFileDir org.dromara.jcudax.JCudax
