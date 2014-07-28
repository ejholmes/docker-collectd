FROM ubuntu:12.04
MAINTAINER Eric Holmes <eric@ejholmes.io>

ENV ETCD http://127.0.0.1:4001

ADD ./bin/build /bin/build
ADD ./bin/start /bin/start
RUN /bin/build

RUN rm -rf /etc/collectd
ADD ./confd /etc/confd
ADD ./collectd /etc/collectd

ENTRYPOINT ["/bin/start"]
CMD []
