#!/bin/bash


vagrant plugin install vagrant-librarian-chef
vagrant plugin install vagrant-aws
vagrant plugin install vagrant-omnibus

vagrant box add hashicorp/precise64 


gem install bundler
bundle

knife solo init .
#librarian-chef init	


#
# Edit Cheffile...
#
#librarian-chef install
