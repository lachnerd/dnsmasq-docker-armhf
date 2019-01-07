FROM alpine:3.8
LABEL maintainer="Robert Lachner - lachnerd"
LABEL version="0.1"

#install dnsmasq
RUN apk update && \
	apk --no-cache add dnsmasq && \
	rm -rf /var/cache/apk/*

RUN echo "conf-dir=/etc/dnsmasq,*.conf" > /etc/dnsmasq.conf

EXPOSE 53/tcp 53/udp

VOLUME ["/etc/dnsmasq"]

#run dnsmasq in foreground
ENTRYPOINT ["dnsmasq","-k"]