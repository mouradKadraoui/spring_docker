FROM openjdk:17-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} spring_docker
ENTRYPOINT ["java","-jar","/spring_docker.jar"]