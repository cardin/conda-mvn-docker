ARG CONDA_IMAGE_TAG
ARG MAVEN_TAG

FROM maven:${MAVEN_TAG} AS mvnCopyBase
FROM ${CONDA_IMAGE_TAG}

# Copying in JDK & Maven layer
# Adapted from README @ https://hub.docker.com/_/eclipse-temurin
# Adapted from Dockerfile @ https://hub.docker.com/_/maven
ENV JAVA_HOME=/opt/ibm/java
COPY --from=mvnCopyBase $JAVA_HOME $JAVA_HOME
ENV PATH="${JAVA_HOME}/bin:${PATH}"

ENV MAVEN_HOME /usr/share/maven
COPY --from=mvnCopyBase $MAVEN_HOME $MAVEN_HOME
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"
