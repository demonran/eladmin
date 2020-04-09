FROM openjdk:8-jre
COPY eladmin-system/target/eladmin-system-2.4.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar","--spring.profiles.active=prd"]