#!/bin/bash

jar=$SRC_DIR/pmml-h2o-example/target/pmml-h2o-example-executable-1.2.5.jar

mvn package

# Creating a jar executible file
cat $RECIPE_DIR/exestub.sh $jar > jpmml
chmod +x jpmml

mkdir -p $PREFIX/bin
cp jpmml $PREFIX/bin

mkdir -p $PREFIX/share/java
cp $jar $PREFIX/share/java
