maven 3.6v and java 8version
not putting -h because of host is already we enterd inside of container 
mysql -u kumar_user -p
given the password 
show databases;
use kumar_db;
show databases;

we need to check:-
==============
/root/petclinic-docker-mysql/target/classes/spring


mydata:-
======
docker run --name kumar-mysql(host name) -e MYSQL_ROOT_PASSWORD=jilan3476(password) -e MYSQL_DATABASE=kumar_db(inside database name) -e MYSQL_USER=admin(root admin) -e MYSQL_PASSWORD=kumar_password -d mysql:latest --default-authentication-plugin=mysql_native_password
commands:-
=======
 docker exec -it cd3d44db806e bash
  285  dokcer ps
  286  ls
  287  cd target/
  288  ls
  289  cd petclinic/
  290  ls
  291  cd resources/
  292  ls
  293  cd ..
  294  cd WEB-INF/
  295  ls
  296  cd classes/
  297  ls
  298  cd db/
  299  ls
  300  cd mysql/
  301  ls
  302  cd ../../../../
  303  l
  304  ls
  305  cd ..
  306  la
  307  ls
  308  ls
  309  cd classes/
  310  ls
  311  cd spring/
  312  ls
  313  cat data-access.properties
  314  cd ..
  315  rm -fr target/
  316  mvn clean install -P MySql
  317  mvn clean install -P MySQL
  318  ls
  319  cd src/
  320  ls
  321  cd ..
  322  docker system prune -a
  323  docker volume prune
  324  docker stop $(docker ps -aq)
  325  docker rm $(docker ps -aq)
  326  docker rmi $(docker images -aq)
  327  docker rmi $(docker images -aq) -f
  328  docker ps
  329  ls
  330  cd target/
  331  ls
  332  cd classes/spring/
  333  cat data-access.properties



# Spring PetClinic Sample Application

# petclinic-docker-mysql


Deploy Spring Boot Petclinic Application + MYSQL Application to Docker


===========================================================================


# step 1:- For running mysql container with single command username, password, db_name.


docker run --name kumar-mysql -e MYSQL_ROOT_PASSWORD=kumar_password -e MYSQL_DATABASE=kumar_db -e MYSQL_USER=kumar_user -e MYSQL_PASSWORD=kumar_password -d mysql:latest --default-authentication-plugin=mysql_native_password


# step 2:- For building the our petclinic application.

docker build . -t petclinic


# step 3:- For running the final application linking the petclinic application and mysql database.

docker run -d -p 9000:8080 --name petclinic-final-app --link kumar-mysql:mysql petclinic   


For logs
===========
docker logs container-name


Get:  http://18.188.102.152:9000/petclinic


