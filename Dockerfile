FROM maven:openjdk:11-jdk AS MAVEN_ENV
WORKDIR /build/
COPY pom.xml /build
COPY src /build/src
RUN mvn clean package -DskipTests=true

FROM openjdk:11-jre
COPY  --from=MAVEN_ENV /build/target/space-management-system-*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]