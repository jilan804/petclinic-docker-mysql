FROM tomcat:9.0   --------->some time compatability issue comes 
EXPOSE 9000 
COPY target/petclinic.war /usr/local/tomcat/webapps/
