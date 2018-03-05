FROM java:8-jre
ENV PROJECT_HOME .
WORKDIR $PROJECT_HOME
ADD ./build/libs/demoproject.jar $PROJECT_HOME/demoproject.jar
ADD ./src/main/resources/application.properties /app/application.properties
CMD ["java", "-Dspring.data.mongodb.uri=mongodb://mdb/customer","-Djava.security.egd=file:/dev/./urandom --spring.config.location=classpath:file:/app/application-properties","-jar","/demoproject.jar"]
