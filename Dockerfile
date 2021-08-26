FROM tomcat 
EXPOSE 9000 
COPY target/petclinic.war /usr/local/tomcat/webapps/
