#! /bin/sh

docker run \
    --name dnsmasq \
    -d \
    -v /opt/dnsmasq:/etc/dnsmasq \
    --cap-add=NET_ADMIN \
    --net=host \
    --restart unless-stopped \
    lachnerd/dnsmasq:0.1