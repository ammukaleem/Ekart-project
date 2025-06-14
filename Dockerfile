FROM openjdk:17
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
ARG artifact=target/shopping-cart-0.0.1-SNAPSHOT.jar
COPY ${artifact} app.jar
ENTRYPOINT ["java","-jar","app.jar"]
EXPOSE  8070
