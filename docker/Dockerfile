FROM digitalinside/java8-tiny:latest
MAINTAINER tm <team@digitalinside.co.uk>

ENV TERM xterm
ENV DIRPATH /scom/share/homeoffice/fee
ENV CONF_PATH /scom/share/homeoffice/fee/conf
ENV JAVA_JVM_ARGS -Xms2048M -Xmx4096M

RUN mkdir -p $DIRPATH && \
    mkdir -p $CONF_PATH

COPY ${project.exec.artifactId}.jar $DIRPATH/${project.exec.artifactId}.jar
COPY init.sh /scom/share/init.sh

RUN chmod 755 /scom/share/init.sh
WORKDIR $DIRPATH
EXPOSE 4025

ENTRYPOINT ["/scom/share/init.sh"]

