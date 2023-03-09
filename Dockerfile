FROM openjdk:11
EXPOSE 9295
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} hystrix-dashboard.jar
ENTRYPOINT ["java","-jar","/hystrix-dashboard.jar"]