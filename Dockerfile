FROM tomcat:9.0
EXPOSE 9000 
COPY target/petclinic.war /usr/local/tomcat/webapps/
