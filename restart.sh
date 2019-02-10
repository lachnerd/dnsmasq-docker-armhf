#! /bin/sh

docker stop dnsmasq && docker rm -f dnsmasq && /home/herakles/dnsmasq-docker-armhf/run.sh && docker logs -f dnsmasq
