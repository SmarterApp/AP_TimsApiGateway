#
# The app runs on port 8080 unless configured
# otherwise.
#
# The app can be enabled to pull its
# configuration from a Spring Cloud Config-Server.
#
FROM openjdk:8-jdk-alpine

MAINTAINER Smarter Balanced "opentestsystem.org"

VOLUME ["/tmp"]

COPY ap-tims-api-gateway.jar /

RUN apk --no-cache add curl

ENV MAX_HEAP_SIZE -Xmx384m

CMD java $MAX_HEAP_SIZE $JAVA_OPTS -jar ap-tims-api-gateway.jar
