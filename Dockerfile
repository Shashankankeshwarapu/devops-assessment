FROM maven:3.5-jdk-8
COPY /my-app /my-app
RUN cd my-app
WORKDIR my-app
RUN mvn clean install
RUN cd target
WORKDIR target
CMD ["java","-jar","my-app-0.0.1-SNAPSHOT.jar"]
