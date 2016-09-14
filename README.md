# my-homebridge

My [Homebridge] set up.

## Prerequisites

1. Ensure `dbus-daemon` is running on the host machine.
2. Ensure `avahi-daemon` is running with `dbus-enabled=yes` on the host machine.

## Run

```bash
docker run \
  --net=host \
  -v ~/.homebridge:/root/.homebridge
  -e HOMEBRIDGE_USERNAME=... \
  -e HOMEBRIDGE_PIN=... \
  -e NEST_TOKEN=... \
  -e HARMONY_IP_ADDRESS=... \
  quay.io/caseywebdev/my-homebridge:master
```

[Homebridge]: https://github.com/nfarina/homebridge
