FROM node:7.2.0

RUN apt-get update && \
    apt-get install -y libavahi-compat-libdnssd-dev && \
    mkdir -p /var/run/dbus && \
    sed -i 's/#enable-dbus=yes/enable-dbus=yes/' /etc/avahi/avahi-daemon.conf

WORKDIR /code

COPY package.json /code/package.json
RUN npm install

COPY bin/init /code/bin/init
COPY config.json /root/.homebridge/config.json

CMD ["/code/bin/init"]
