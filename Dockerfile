FROM maven as build
WORKDIR /app
COPY . .
RUN mvn install

FROM openjdk:11.0
WORKDIR /app
COPY --from=build /app/target/UPES.jar /app/
EXPOSE 9093
CMD ["java","-jar","UPES.jar"]