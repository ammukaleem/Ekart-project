FROM openjdk:8u151-jdk-alpine3.7
COPY . /usr/src/app
WORKDIR /usr/src/app
ARG artifact=target/shopping-cart-0.0.1-SNAPSHOT.jar
COPY ${artifact} app.jar
ENTRYPOINT ["java","-jar","app.jar"]
EXPOSE  8070
