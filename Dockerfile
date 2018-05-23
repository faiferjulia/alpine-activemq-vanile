# activemq
FROM alpine:latest
MAINTAINER julia.faifer@web.de
RUN apk add --no-cache maven wget
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
RUN mkdir -p /opt
RUN wget -qO- https://archive.apache.org/dist/activemq/5.15.3/apache-activemq-5.15.3-bin.tar.gz | tar xz -C /opt
EXPOSE 1883 5672 8161 61613 61614 61616
ENTRYPOINT ["/opt/apache-activemq-5.15.3/bin/activemq", "console"]
