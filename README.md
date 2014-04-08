aws-usa-gateway
===============

vagrant project to build a dnsmasq+haproxy vm hosted on AWS/USA to access to netflix

Installation
------------

```./pre-install.sh```

edit VagrantFile to fill your aws settings

```vagrant up --provider=aws```

note the public IP that get used and use it as DNS server

