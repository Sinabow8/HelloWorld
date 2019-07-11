FROM alpine
WORKDIR /root/hello-world
COPY Main.java /root/hello-world

RUN apk add openjdk8
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin

RUN javac /root/hello-world/Main.java

ENTRYPOINT java /root/hello-world/Main