FROM maven:3.8.4-openjdk-17 as build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/blogapi-0.0.1-SNAPSHOT.jar blogapi.jar

EXPOSE 9090
ENTRYPOINT ["java","-jar","blogapi.jar"]