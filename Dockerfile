# Pull base image
From tomcat:8-jre8
ADD target/InformationCentre.war /usr/local/tomcat/webapps/ 
EXPOSE 8080
