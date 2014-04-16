Vagrant/Ansible provision to aws-usa-gw
=======================================

The purpose of this vagrant / ansible project is to build 2 box :

- one AWS that acts as haproxy
- one local that acts as dnsmasq


Install
-------

```
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

If you use your dnsmasq box as DNS your should now be able to bypass some territorial limitation.

Thanks to orginal works from http://trick77.com/2014/03/01/tunlr-style-dns-unblocking-pandora-netflix-hulu-et-al/ and https://github.com/trick77/tunlr-style-dns-unblocking.
The purpose of my repository is just to automate the deploy phase. 