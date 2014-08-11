#!/bin/bash -eux

# Install Ansible repository.
apt-get -y update
apt-get -y install software-properties-common
apt-add-repository ppa:rquillo/ansible

# Install Ansible.
apt-get -y update
apt-get -y install ansible
