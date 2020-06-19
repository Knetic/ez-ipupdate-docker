FROM debian:latest

RUN apt-get update && \
    apt-get -y install ez-ipupdate && \
    rm -f /etc/ez-ipupdate/default.conf;

VOLUME /etc/ez-ipupdate/default.conf

CMD ["/usr/sbin/ez-ipupdate", "-f", "-c", "/etc/ez-ipupdate/default.conf"]