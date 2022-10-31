FROM nginx

LABEL maintainer=vishal

USER root

COPY /var/jenkins/workspace/demo1/target/spring-boot-hello-world-0.0.1-SNAPSHOT.jar /usr/share/nginx/spring-boot-hello-world-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar", "/usr/share/nginx/spring-boot-hello-world-0.0.1-SNAPSHOT.jar"]
