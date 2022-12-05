FROM maven:3.8-openjdk-18 as builder

ARG GIT_URL

RUN git clone ${GIT_URL} /app

WORKDIR /app

RUN mvn package

FROM openjdk:20-slim

COPY --from=builder /app/target/restful-microservices-1.0.jar .

EXPOSE 8080

CMD [ "java", "-jar", "--add-opens", "java.base/java.lang=ALL-UNNAMED",  "restful-microservices-1.0.jar"  ]