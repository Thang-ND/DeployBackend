FROM openjdk:17-jdk-slim
ENV APP_JAR_NAME springboot-mongodb
RUN mkdir /app
ADD ./target/springboot-mongodb.jar /app/
WORKDIR /app
EXPOSE 8080
ENTRYPOINT ["java", "-Duser.timezone=Asia/Saigon", "-jar", "springboot-mongodb.jar"]