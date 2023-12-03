ARG BUILD_FROM=ghcr.io/hassio-addons/base:14.3.3
# hadolint ignore=DL3006
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Run updates
# RUN apt-get clean && apt-get update && apt-get upgrade -y

# Set the locale
# RUN apt-get install -y locales && locale-gen en_US.UTF-8

# Install python/pip
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3=3.11.4-r0 && ln -sf python3 /usr/bin/python && python3 -m ensurepip


#RUN curl -k https://codeload.github.com/johanmeijer/grott/zip/master --output files.zip && unzip files.zip
#RUN unzip files.zip

# Copy data for add-on
COPY script.sh /app/script.sh
RUN chmod a+x /app/script.sh

WORKDIR /app
RUN curl -Lk 'https://github.com/johanmeijer/grott/archive/refs/heads/master.zip' --output files.zip && unzip -o files.zip && rm files.zip && mv grott-*/*.py ./
# Move the addon
RUN curl -L 'https://raw.githubusercontent.com/egguy/grott/feature/ha-extension/examples/Home%20Assistent/grott_ha.py' -o grott_ha.py

COPY requirements.txt requirements.txt
#Install required python packages
RUN pip3 install --no-cache-dir -r requirements.txt

CMD [ "./script.sh" ]

# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="${BUILD_NAME}" \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="egguy <etienne.guilluy@gmail.com>" \
    org.opencontainers.image.title="${BUILD_NAME}" \
    org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
    org.opencontainers.image.authors="egguy <etienne.guilluy@gmail.com>" \
    org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
    org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/main/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}
