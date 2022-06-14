FROM cytomine/java8:latest
MAINTAINER "chao.tuo@coolcollege.cn"
ADD target/jacoco-springboot-demo-0.0.1-SNAPSHOT.jar /jacoco-springboot-demo.jar
ADD org.jacoco.agent-0.8.7-runtime.jar /org.jacoco.agent-0.8.7-runtime.jar
RUN bash -c 'touch /jacoco-springboot-demo.jar'
EXPOSE 8080 6300
ENTRYPOINT ["java","-javaagent:org.jacoco.agent-0.8.7-runtime.jar=includes=*,output=tcpserver,port=6300,address=localhost,append=true","-jar","/jacoco-springboot-demo.jar"]