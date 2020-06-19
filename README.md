ez-ipupdate-docker
====

Unofficial docker container for the `ez-ipupdate` DDNS update package, intended to run in foreground mode.

## What's it for?

`ez-ipupdate` determines your public IP address, and updates the A record for your domain to point to that IP address. 

## How's it used?

This container will do a one-time update of your domain, using the config file you mount.

Example invocation:

```bash
docker run -it --rm --net=host -v '/etc/ez-ipupdate/default.conf:/etc/ez-ipupdate/default.conf' ez-ipupdate
```

Example `docker-compose.yml`:

```yaml
version: '2'
services:
  ez-ipupdate:
    image: ez-ipupdate
    container_name: ez-ipupdate
    network_mode: host
    volumes:
      - /etc/ez-ipupdate/default.conf:/etc/ez-ipupdate/default.conf:ro
```