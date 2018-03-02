FROM java:8-jre
ENV PROJECT_HOME .
WORKDIR $PROJECT_HOME
ADD ./target/demo-1-0.0.1-SNAPSHOT.jar $PROJECT_HOME/demo-1-0.0.1-SNAPSHOT.jar
CMD ["java", "-Dspring.data.mongodb.uri=mongodb://mdb:27017/customer","-Djava.security.egd=file:/dev/./urandom","-jar","/demo-1-0.0.1-SNAPSHOT.jar"]
