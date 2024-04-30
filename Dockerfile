RUN apt  update && \
    apt install -y git
RUN git clone https://github.com/ArunReddy-7/maven-jar-sample.git

WORKDIR /app/maven-jar-sample

RUN mvn -version
RUN mvn clean package
FROM openjdk:11-jre-slim
WORKDIR /build
COPY --from=builder /app/maven-jar-sample/target/*.jar /build/app.jar

EXPOSE 8080


CMD ["java", "-jar", "app.jar"]

