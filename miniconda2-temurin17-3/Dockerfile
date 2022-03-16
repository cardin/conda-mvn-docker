ARG MAVEN_TAG
FROM maven:${MAVEN_TAG} AS mvnCopyBase
FROM debian:bullseye-slim

ARG CONDA_VERSION
ARG CONDA_SHA256SUM

# A mix of miniconda3 and miniconda Dockerfiles
# https://github.com/ContinuumIO/docker-images/blob/miniconda3-4.3.27/miniconda/Dockerfile
# https://github.com/ContinuumIO/docker-images/blob/master/miniconda3/debian/Dockerfile
# https://repo.anaconda.com/miniconda/
# https://docs.conda.io/en/latest/miniconda_hashes.html

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update -q && \
    apt-get install -q -y --no-install-recommends \
    wget bzip2 ca-certificates \
    libglib2.0-0 libxext6 libsm6 libxrender1 \
    git mercurial subversion \
    curl grep sed dpkg \ 
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
# 3rd last line is tini's deps

# Leave these args here to better use the Docker build cache
ARG MINICONDA_URL="https://repo.anaconda.com/miniconda/Miniconda2-${CONDA_VERSION}-Linux-x86_64.sh"

RUN set -x && \
    wget "${MINICONDA_URL}" -O miniconda.sh -q && \
    echo "${CONDA_SHA256SUM} miniconda.sh" > shasum && \
    if [ "${CONDA_VERSION}" != "latest" ]; then sha256sum --check --status shasum; fi && \
    mkdir -p /opt && \
    sh miniconda.sh -b -p /opt/conda && \
    rm miniconda.sh shasum && \
    ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \
    echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate base" >> ~/.bashrc && \
    find /opt/conda/ -follow -type f -name '*.a' -delete && \
    find /opt/conda/ -follow -type f -name '*.js.map' -delete && \
    /opt/conda/bin/conda clean -afy

RUN TINI_VERSION=`curl https://github.com/krallin/tini/releases/latest | grep -o "/v.*\"" | sed 's:^..\(.*\).$:\1:'` && \
    curl -L "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini_${TINI_VERSION}.deb" > tini.deb && \
    dpkg -i tini.deb && \
    rm tini.deb && \
    apt-get clean

ENV PATH /opt/conda/bin:$PATH
ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "/bin/bash" ]

# Copying in JDK & Maven layer
# Adapted from README @ https://hub.docker.com/_/eclipse-temurin
# Adapted from Dockerfile @ https://hub.docker.com/_/maven
ENV JAVA_HOME=/opt/java/openjdk
COPY --from=mvnCopyBase $JAVA_HOME $JAVA_HOME
ENV PATH="${JAVA_HOME}/bin:${PATH}"

ENV MAVEN_HOME /usr/share/maven
COPY --from=mvnCopyBase $MAVEN_HOME $MAVEN_HOME
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"
