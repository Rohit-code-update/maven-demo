# Use the official Maven image to build and run the application
FROM docker.io/openjdk:21

# Set the working directory
WORKDIR /app

# Copy the pom.xml and the source code
# COPY pom.xml .
# COPY src ./src

COPY target/*.jar app.jar

# Package the application
# RUN mvn clean package -DskipTests

# Expose the application port (change if necessary)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
