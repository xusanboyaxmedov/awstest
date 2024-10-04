FROM openjdk:17-jdk-alpine
VOLUME /tmp
LABEL authors="xusan"
EXPOSE 8080
ARG JAR-FILE=build/libs/*.jar
COPY ${JAR-FILE} app.jar
ENTRYPOINT ["java", "jar", "/app.jar"]