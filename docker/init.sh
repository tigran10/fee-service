#!/usr/bin/env bash
 
set -e
JAVA_OPTS="${JAVA_JVM_ARGS} ${appenv}"
APP_CONF=""
LOGBACK_CONF=""

function go {
    export JAVA_OPTS LOGBACK_CONF APP_CONF JAVA_AGENTS
    java ${LOGBACK_CONF} -jar $JAVA_OPTS ${project.exec.artifactId}.jar ${APP_CONF}
}


echo "Starting up shining fee service"
go

