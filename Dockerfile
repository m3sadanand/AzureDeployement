
# Stage 1 (to create a "build" image, ~360MB)
FROM eclipse-temurin:17-jdk-alpine AS builder
# smoke test to verify if java is available
RUN java -version

COPY . /usr/src/myapp/
WORKDIR /usr/src/myapp/
RUN set -Eeux \
    && apk --no-cache add maven \
    # smoke test to verify if maven is available
    && mvn --version
RUN mvn package

# Stage 2 (to create a downsized "container executable", ~180MB)
FROM eclipse-temurin:17-jre-alpine
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=builder /usr/target/java-container-azure.jar .

EXPOSE 8123
ENTRYPOINT ["java", "-jar", "./java-container-azure.jar"]
