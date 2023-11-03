
FROM openjdk:17
EXPOSE 8080
ADD java-container-azure.jar java-container-azure.jar
ENTRYPOINT ["java","-jar","java-container-azure.jar"]
