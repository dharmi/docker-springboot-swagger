FROM java:8

MAINTAINER dharmi@gmail.com

VOLUME /tmp

#Copy a prebuilt java application to the container
ADD springswagger.jar app.jar

RUN bash -c 'touch /app.jar'

# Expose HTTP port 8080 for tomcat triggered by Spring Boot
EXPOSE 8080

# bring the application up and running.
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
