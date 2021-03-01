FROM ubuntu:bionic

WORKDIR /mininet-wifi

COPY . /mininet-wifi

COPY mininet-wifi-entrypoint /usr/bin/mininet-wifi-entrypoint

RUN apt-get update -qqy; \
    DEBIAN_FRONTEND=noninteractive util/install.sh -Wlnfv

CMD ["/usr/bin/mininet-wifi-entrypoint"]

