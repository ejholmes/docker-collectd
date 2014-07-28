FROM ubuntu:12.04
MAINTAINER Eric Holmes <eric@ejholmes.io>

ENV ETCD http://127.0.0.1:4001

ADD ./bin/build /bin/build
ADD ./bin/start /bin/start
RUN /bin/build
ADD ./confd /etc/confd

ENTRYPOINT ["/bin/start"]
CMD []
