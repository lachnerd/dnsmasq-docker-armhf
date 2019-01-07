# dnsmasq-docker-armhf
dnsmasq Docker Image for Raspberry Pi

## Usage
dnsmasq requires NET_ADMIN capabilities to run correctly.
Start it with 
```
$ docker run \
 	--name dnsmasq \
   	-d \
   	-v /opt/dnsmasq:/etc/dnsmasq \
    --cap-add=NET_ADMIN \
    --net=host \
   	--restart always \
   	lachnerd/dnsmasq
```
