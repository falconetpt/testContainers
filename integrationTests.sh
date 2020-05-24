#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

pushd ${DIR}
    docker-compose stop
    docker-compose build --no-cache music
    docker-compose up -d

    ./mvnw test

    docker-compose stop
popd
