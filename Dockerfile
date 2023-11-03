FROM openjdk:17
COPY . /src/java
WORKDIR /src/java
RUN ["javac","AzureDeployementApplication.java"]
ENTRYPOINT ["java","-jar",]
