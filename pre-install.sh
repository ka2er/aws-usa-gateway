#!/bin/bash
sudo easy_install pip
sudo pip install ansible

vagrant plugin install vagrant-aws
vagrant box add hashicorp/precise64 
