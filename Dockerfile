FROM tomcat:10-jdk17
COPY target /usr/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]