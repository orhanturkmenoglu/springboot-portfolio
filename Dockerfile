# 1. Build aşaması (Java 21 ile build)
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY . .
RUN ./mvnw clean package -DskipTests

# 2. Çalıştırma aşaması (Java 24 ile run)
FROM eclipse-temurin:24-jdk
WORKDIR /app
COPY --from=build /app/target/springboot-portfolio-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]