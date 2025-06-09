FROM openjdk:21
WORKDIR /app
COPY demo/target/demo-0.0.3.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
FROM postgres
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=1234
ENV POSTGRES_DB=music
EXPOSE 5432
