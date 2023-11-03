
FROM openjdk:17
EXPOSE 8080
ADD /home/runner/work/AzureDeployement/AzureDeployement/target/java-container-azure.jar java-container-azure.jar
ENTRYPOINT ["java","-jar","/java-container-azure.jar"]
