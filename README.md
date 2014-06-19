# Docker Collectd

This is a lightweight docker container based on [progrium/busybox](https://github.com/progrium/busybox)
for running [collectd](https://collectd.org/).

## Usage

```bash
docker run -v collectd.conf:/etc/collectd.conf remind101/collectd 
```
