FROM tomcat:latest
MAINTAINER Mohan <mohan200810@gmail.com>
COPY target/maven-web-application.*war /usr/local/tomcat/webapps/ maven-web-application.war
