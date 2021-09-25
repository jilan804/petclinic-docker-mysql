FROM tomcat:9.0   --------->some time compatability issue comes same 9.0 version we are taken
EXPOSE 9000 
COPY target/petclinic.war /usr/local/tomcat/webapps/
