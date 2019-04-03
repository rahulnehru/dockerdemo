FROM alpine:latest

RUN mkdir -p /application
RUN apk add bash openjdk8

WORKDIR /application

COPY target/ .

EXPOSE 9000

ENTRYPOINT ["/bin/bash", "/application/universal/stage/bin/dockerdemo"]

