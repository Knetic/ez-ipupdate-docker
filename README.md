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

By default, this will just run the executable. But `ez-ipupdate` may (paradoxically) not discover your _internal_ network's IP address, rather than the public address. 

If you find yourself with the wrong IP, check `example_ipecho.sh` for a script that uses the `ipecho.net` service to get your actual public IP, and runs this container to update your domain.