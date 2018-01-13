FROM openjdk:8

ADD target/spring-boot-web-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java", "-jar","/app.jar"]