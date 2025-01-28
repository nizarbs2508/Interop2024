FROM openjdk:17-jdk-slim
WORKDIR /app
COPY QuickDiskTest-1.00.jar QuickDiskTest.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
