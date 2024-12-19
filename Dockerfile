# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file into the container
COPY build/libs/config-repo-0.0.1-SNAPSHOT.jar config-repo.jar

# Expose the Eureka server's port
EXPOSE 8888

# Command to run the application
ENTRYPOINT ["java", "-jar", "config-repo.jar"]