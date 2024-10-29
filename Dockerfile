# First Stage: Build the WAR
FROM maven:3.8.5-openjdk-8 AS build
WORKDIR /app
COPY . .


# Second Stage: Run the App
FROM openjdk:8
EXPOSE 4000
COPY --from=build /app/target/devopstool.war /devopstool.war
ENTRYPOINT ["java", "-jar", "/devopstool.war"]

