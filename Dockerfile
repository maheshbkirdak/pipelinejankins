FROM openjdk:17
EXPOSE 8080
ADD target/pipelinejankins.jar pipelinejankins.jar
ENTRYPOINT [ "java","-jar","/pipelinejankins.jar" ]