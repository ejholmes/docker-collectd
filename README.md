# Docker Collectd

A docker container for running [collectd](https://collectd.org/),
configured via [confd](https://github.com/kelseyhightower/confd)
and [etcd](https://github.com/coreos/etcd).

This container is designed to be run inside a coreos cluster, but
you can run it anywhere that etcd is running.

## Usage

```bash
$ docker run --env ETCD=http://<ip>:4001 \
    -v `pwd`/confd:/etc/confd -v `pwd`/collectd:/etc/collectd ejholmes/collectd
```
