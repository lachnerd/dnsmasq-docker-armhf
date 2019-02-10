#! /bin/sh

docker run \
    --name dnsmasq \
    -d \
    -v /docker-data/dnsmasq/dnsmasq.conf:/etc/dnsmasq.conf \
    -v /docker-data/dnsmasq/conf:/etc/dnsmasq.d \
    -v /docker-data/dnsmasq/log:/var/log \
    --cap-add=NET_ADMIN \
    --net=host \
    --restart unless-stopped \
    lachnerd/dnsmasq:0.1
