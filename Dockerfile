#FROM  openjdk:8-jre-nanoserver-1809
COPY  target/jenkins-0.0.1-SNAPSHOT.jar  /jenkins.jar
ENTRYPOINT  ["java","-jar","-Dspring.profiles.active=dev","/jenkins.jar"]