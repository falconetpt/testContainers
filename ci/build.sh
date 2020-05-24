#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
JAR_NAME=$1

pushd "${DIR}"/..
  mvn clean package -DskipTests
  cp target/*.jar "${JAR_NAME}".jar
popd
