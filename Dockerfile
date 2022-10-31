FROM nginx

LABEL maintainer=vishal

USER root

COPY src=/var/jenkins/workspace/Pipeline-docker/target/spring-boot-hello-world-0.0.1-SNAPSHOT.jar dest=/usr/share/nginx/spring-boot-hello-world-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar", "/usr/share/nginx/spring-boot-hello-world-0.0.1-SNAPSHOT.jar"]
