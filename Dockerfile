#
# Build stage
#
FROM maven:3.6-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

FROM tomcat:8-jre11
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS


COPY config/tomcat-users.xml /usr/local/tomcat/conf/
COPY config/data /usr/local/data
COPY --from=build /home/app/target/softwaretool.war /usr/local/tomcat/webapps/softwaretool.war
CMD ["catalina.sh", "run"]
