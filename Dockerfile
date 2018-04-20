FROM openjdk:8-jre-alpine
RUN mkdir /usr/local/tomcat
RUN wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.30/* /usr/local/tomcat
EXPOSE 8081
CMD /usr/local/tomcat/bin/catalina.sh run
