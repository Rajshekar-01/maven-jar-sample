# Use a Java runtime base image
FROM openjdk:11-jre

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/maven-jar-sample-1.0-SNAPSHOT.jar /app/
# Specify the command to run your application
CMD ["java", "-jar", " maven-jar-sample-1.0-SNAPSHOT.jar"]
