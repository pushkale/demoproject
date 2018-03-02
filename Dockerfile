FROM java:8-jre
ENV PROJECT_HOME .
WORKDIR $PROJECT_HOME
ADD ./build/libs/demoproject.jar $PROJECT_HOME/demoproject.jar
CMD ["java", "-Dspring.data.mongodb.uri=mongodb://mdb:27017/customer","-Djava.security.egd=file:/dev/./urandom","-jar","/demoproject.jar"]
