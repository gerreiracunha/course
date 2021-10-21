FROM adoptopenjdk:11-jre-hotspot AS MAVEN_ENV
WORKDIR /build/
COPY pom.xml /build
COPY src /build/src
RUN mvn clean package -DskipTests=true


COPY  --from=MAVEN_ENV /build/target/space-management-system-*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]


