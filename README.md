Vagrant/Ansible provision to aws-usa-gw
=======================================

The purpose of this vagrant / ansible project is to build 2 box :

- one AWS that acts as haproxy (hosted in USA)
- one local that acts as a dnsmasq server

Installation
------------

./pre-install.sh

```
Configuration
-------------

 - EDIT VagrantFile to fill your AWS server infos
 - EDIT inventory/stage to fill info about your dnsmasq box

Usage
----- 
 
```
vagrant up --provider=aws
```

Just use the public IP that get allocated as a DNS server.
You should now be able to bypass some territorial limitation...

Development
-----------

There is also a provider for virtualbox in order to test the setup

```
vagrant up --provider=virtualbox
```

Credits
-------

Based on original work of https://github.com/trick77/tunlr-style-dns-unblocking.
All explanations here : http://trick77.com/2014/03/01/tunlr-style-dns-unblocking-pandora-netflix-hulu-et-al/.
The purpose of my repository is just to automate the deploy phase. 