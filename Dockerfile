FROM maven:3.8.4-openjdk-11-slim
WORKDIR /app
COPY . /app
RUN mvn clean package

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY QuickDiskTest-1.00.jar QuickDiskTest.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
