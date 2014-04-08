aws-usa-gateway
===============

vagrant project to build a dnsmasq+haproxy vm hosted on AWS/USA to access netflix

Installation
------------


```
./pre-install.sh
```


edit Vagrantfile to fill in your aws settings


```
vagrant up --provider=aws
```

note the public IP that get allocated and use it as DNS server

Development
-----------

There is also a provider for virtualbox in order to test the setup

```
vagrant up --provider=virtualbox
```


Credits
-------

Based on original work of https://github.com/trick77/tunlr-style-dns-unblocking
