#!/usr/bin/env bash

# change by yours
DOCKER_IMAGE=grosinosky/flink:nexmark-1.14.2-scala_2.12-java8
MVN=${MVN:-mvn}
DIR=`pwd`

$MVN clean package -DskipTests
cd target/nexmark-flink-bin/
tar czf "nexmark-flink.tgz" nexmark-flink
cp nexmark-flink.tgz ${DIR}
cd ${DIR}
docker build . -t $DOCKER_IMAGE
docker push $DOCKER_IMAGE