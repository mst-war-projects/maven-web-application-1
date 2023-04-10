FROM ubuntu:20.04
FROM tomcat:latest
RUN apt-get install maven default-jdk -y
MAINTAINER Mohan <mohan200810@gmail.com>
COPY target/maven-web-application.*war /usr/local/tomcat/webapps/ maven-web-application.war
