# my-homebridge

My [Homebridge] set up with Docker. You can use it too!

## Prerequisites

You'll need `git`, `docker` (and a working Docker host), and `docker-compose` to
get this running. 

## Config

First, clone this repo and enter the project directory.

```bash
git clone git@github.com:caseywebdev/my-homebridge
cd my-homebridge
```

Then, create your `config.json` file in the project root. For example:

**config.json**

```json
{
  "bridge": {
    "name": "Homebridge",
    "username": "AB:CD:EF:12:34:56",
    "port": 51826,
    "pin": "123-45-678"
  },
  "accessories": [...],
  "platforms": [...]
}
```

Finally, create a `package.json` in the project root with the `homebridge`
version you wish to use, as well as any plugin packages. For example:

**package.json**

```json
{
  "private": true,
  "dependencies": {
    "homebridge": "0.3.4",
    "homebridge-harmonyhub": "0.1.1",
    "homebridge-nest": "1.1.2"
  }
}
```

## Run

```bash
docker-compose up --build -d
```

If you make any changes to your `config.json` or `package.json`, simply re-run
the above command to restart Homebridge with the new settings.

[Homebridge]: https://github.com/nfarina/homebridge
