FROM progrium/busybox

RUN opkg-install collectd collectd-mod-cpu collectd-mod-df collectd-mod-disk collectd-mod-interface collectd-mod-load collectd-mod-memory collectd-mod-network collectd-mod-postgresql
RUN mkdir -p /usr/lib/collectd
