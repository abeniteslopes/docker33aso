FROM java:8
LABEL maintainer=“33ASO”
VOLUME /tmp
EXPOSE 8080
ADD helloword-0.0.1-SNAPSHOT.jar helloword.jar
ENTRYPOINT ["java","-jar","helloword.jar"]
