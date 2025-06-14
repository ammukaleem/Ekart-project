FROM openjdk:17
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
ARG artifact=target/spring-boot-web.jar
COPY ${artifact} app.jar
ENTRYPOINT ["java","-jar","app.jar"]
EXPOSE  8080
