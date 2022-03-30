FROM haproxy:alpine3.15

USER root

#COPY haproxy.cfg /usr/local/etc/haproxy/
#VOLUME /usr/local/etc/haproxy/
#ADD haproxy.cfg, /usr/local/etc/haproxy/

RUN echo "net.ipv4.ip_nonlocal_bind=1" > /etc/sysctl.d/haproxy

expose 1080:80
RUN apk -U upgrade
