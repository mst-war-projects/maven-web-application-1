FROM tomcat:latest
MAINTAINER Mohan <mohan200810@gmail.com>
COPY target/*.war /usr/local/tomcat/webapps/
