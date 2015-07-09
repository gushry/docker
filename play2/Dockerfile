FROM java:openjdk-8u45-jdk
MAINTAINER Gushiken

ENV ACTIVATOR_VERSION="1.3.5" \
    TARGET_DIR="/opt"
ENV ZIP_FILE=typesafe-activator-${ACTIVATOR_VERSION}-minimal.zip

# Get dependencies
RUN apt-get install -y --force-yes unzip

# Get play
WORKDIR ${TARGET_DIR}
RUN wget https://downloads.typesafe.com/typesafe-activator/${ACTIVATOR_VERSION}/${ZIP_FILE} && \
    unzip ${ZIP_FILE} && rm ${ZIP_FILE}

# Set path
ENV PLAYPATH ${TARGET_DIR}/activator-${ACTIVATOR_VERSION}-minimal
ENV PATH $PLAYPATH:$PATH

