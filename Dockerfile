FROM openjdk:8-jdk-alpine

ARG FILENAME=rest-example-0.0.1-SNAPSHOT.jar
ENV FILENAME=${FILENAME}

COPY ./target/${FILENAME} /usr/src/myapp/
WORKDIR /usr/src/myapp
EXPOSE 8801
ENV JAVA_OPTS='-Xmx512m'
CMD java -jar $JAVA_OPTS $FILENAME