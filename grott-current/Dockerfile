ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Run updates
# RUN apt-get clean && apt-get update && apt-get upgrade -y

# Set the locale
# RUN apt-get install -y locales && locale-gen en_US.UTF-8

# Install python/pip
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools


#RUN curl -k https://codeload.github.com/johanmeijer/grott/zip/master --output files.zip && unzip files.zip
#RUN unzip files.zip

# Copy data for add-on
COPY script.sh /app/script.sh
WORKDIR /app
RUN curl -Lk 'https://github.com/perico85/grott/archive/refs/heads/patch-1.zip' --output files.zip && unzip -o files.zip && rm files.zip && mv grott-*/*.py ./
# Move the addon
RUN curl -L 'https://raw.githubusercontent.com/johanmeijer/grott/Beta-(2.8.x)/examples/Home%20Assistent/grott_ha.py' -o grott_ha.py

#Install required python packages 
RUN pip install paho-mqtt requests influxdb influxdb


RUN chmod a+x script.sh
CMD [ "./script.sh" ]
