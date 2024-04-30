# Use a Java runtime base image
FROM openjdk:11-jre

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/your-application.jar /app/your-application.jar

# Specify the command to run your application
CMD ["java", "-jar", "your-application.jar"]
