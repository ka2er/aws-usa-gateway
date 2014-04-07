#!/bin/bash

#
# @TODO : host dnsmasq on my local subnet
#

# ppa for haproxy developpment version
apt-add-repository -y ppa:vbernat/haproxy-1.5

apt-get update
apt-get install -y --no-install-recommends haproxy dnsmasq git

service haproxy stop
service dnsmasq stop

OLD_DIR="$PWD"

cd /vagrant
git submodule init
git submodule update

cd "$OLD_DIR"

# retrieve public IP
IP="$(wget -qO - http://ipecho.net/plain)"

echo "Applying configuration files (my public IP is $IP)"
cp /vagrant/tunlr-style-dns-unblocking/poor-mans-dnsmasq.txt /etc/dnsmasq.d/usa-gateway
cp /vagrant/tunlr-style-dns-unblocking/poor-mans-haproxy.conf /etc/haproxy/haproxy.cfg

# update configuration files
sed -i "s/208.110.82.54/$IP/g" /etc/dnsmasq.d/usa-gateway
sed -i "s/ENABLED=0/ENABLED=1/g" /etc/default/haproxy

service dnsmasq start

# update upstream DNS server
sed -i "s/nameserver 127.0.0.1/nameserver 8.8.8.8/g" /etc/resolv.conf

service haproxy start
