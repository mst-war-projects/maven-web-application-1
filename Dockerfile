FROM tomcat:latest
MAINTAINER Mohan <mohan200810@gmail.com>
COPY target/maven-web-app*.war /usr/local/tomcat/webapps/maven-web-app.war
