FROM openjdk:8
EXPOSE 4000
ADD target/devopstool.war devopstool.war
ENTRYPOINT ["java","-jar","/devopstool.war"]
