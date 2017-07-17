FROM node:8.1.4

RUN apt-get update && \
    apt-get install -y libavahi-compat-libdnssd-dev && \
    mkdir -p /var/run/dbus && \
    sed -i 's/#enable-dbus=yes/enable-dbus=yes/' /etc/avahi/avahi-daemon.conf

WORKDIR /code

COPY package.json /code/package.json
RUN npm install

CMD ["/code/bin/run"]
