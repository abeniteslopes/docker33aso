FROM  kaiwinter/docker-java8-maven
LABEL maintainer=“33ASO”

# Install maven
#RUN apt-get update
#RUN apt-get install -y maven

WORKDIR /helloword

# Prepare by downloading dependencies
ADD helloword/pom.xml /helloword/pom.xml
#RUN ["mvn", "dependency:resolve"]
#RUN ["mvn", "verify"]

# Adding source, compile and package into a fat jar
ADD helloword/src /helloword/src
RUN ["mvn", "package"]

EXPOSE 8080
#ADD /target/helloword-0.0.1-SNAPSHOT.jar helloword.jar
ENTRYPOINT ["java","-jar","/helloword/target/helloword-0.0.1-SNAPSHOT.jar"]
