FROM node:6.5.0

RUN apt-get update && \
    apt-get install -y libavahi-compat-libdnssd-dev && \
    mkdir -p /var/run/dbus && \
    sed -i 's/#enable-dbus=yes/enable-dbus=yes/' /etc/avahi/avahi-daemon.conf

WORKDIR /code

COPY package.json /code/package.json
RUN npm install

COPY bin /code/bin
COPY etc /code/etc

ARG VERSION
ENV VERSION $VERSION

CMD ["/code/bin/init"]
