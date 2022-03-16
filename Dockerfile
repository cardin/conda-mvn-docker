FROM continuumio/miniconda:latest
# Copying in JDK & Maven layer
# Adapted from README @ https://hub.docker.com/_/eclipse-temurin
# Adapted from Dockerfile @ https://hub.docker.com/_/maven
ENV JAVA_HOME=/opt/java/openjdk
COPY --from=maven:3.8-eclipse-temurin-17 $JAVA_HOME $JAVA_HOME
ENV PATH="${JAVA_HOME}/bin:${PATH}"

ENV MAVEN_HOME /usr/share/maven
COPY --from=maven:3.8-eclipse-temurin-17 $MAVEN_HOME $MAVEN_HOME
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"
