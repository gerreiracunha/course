FROM maven AS MAVEN_ENV
WORKDIR /build/
COPY pom.xml /build
COPY src /build/src
RUN mvn clean package -DskipTests=true

FROM adoptopenjdk:11-jre-hotspot
COPY  --from=MAVEN_ENV /build/target/course-*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]

