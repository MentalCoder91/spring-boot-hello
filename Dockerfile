#Multi-stage docker file
# Build stage
FROM maven:3.8.3-openjdk-17-slim AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn package

# Deploy stage
FROM openjdk:17-jre-slim
WORKDIR /app
COPY --from=build /app/target/myapp.jar .
CMD ["java", "-jar", "myapp.jar"]



#FROM eclipse-temurin:17-jdk-jammy
#COPY target/*.jar app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]