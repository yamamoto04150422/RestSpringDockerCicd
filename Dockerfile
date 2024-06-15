# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Install Maven and dependencies
RUN apt-get update && apt-get install -y maven curl && \
    mkdir -p /app && \
    curl -o /app/postgresql-42.2.19.jar https://jdbc.postgresql.org/download/postgresql-42.2.19.jar && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the Maven project file and download dependencies
COPY pom.xml .
RUN mvn dependency:go-offline

# Copy the rest of the application source code
COPY src ./src

# Build the application
RUN mvn clean package -DskipTests

# Run the application
CMD ["java", "-jar", "target/demo-1.0.0.jar"]
