FROM azure-base as build
RUN mkdir -p /project
ADD ./. /project/
WORKDIR /project
RUN ./mvnw package

FROM azure-base
RUN mkdir /app
WORKDIR /app
COPY --from=build /project/target/demo-docker-0.0.1-SNAPSHOT.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]