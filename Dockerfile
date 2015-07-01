FROM maven:3.3.3-jdk-7
RUN mkdir --parents /usr/src/app
WORKDIR /usr/src/app
ADD . /usr/src/app
RUN mvn clean install
CMD mvn jetty:run