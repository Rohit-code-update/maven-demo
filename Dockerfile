FROM docker.io/openjdk:21

WORKDIR /app

COPY target/*.jar app.jar

# RUN mvn clean package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
