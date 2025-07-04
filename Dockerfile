# Start with a base image that includes Java
FROM openjdk:17-jdk-slim		

# Set the working directory inside the container
WORKDIR /app

# Copy the built jar file into the container
COPY target/spring-boot-crud-rest-1.1.0.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
