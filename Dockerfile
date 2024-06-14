# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install Maven and dependencies
RUN apt-get update && apt-get install -y maven curl && \
    curl -o /app/postgresql-42.2.19.jar https://jdbc.postgresql.org/download/postgresql-42.2.19.jar

# Build the application
RUN mvn clean package -DskipTests

# Run the application
CMD ["java", "-jar", "target/demo-1.0.0.jar"]
