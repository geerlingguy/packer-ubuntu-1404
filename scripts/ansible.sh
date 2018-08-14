#!/bin/bash -eux

# Upgrade system software.
apt-get -y update && apt-get -y upgrade

# Install dependencies.
apt-get -y install software-properties-common

# Install Ansible repository.
apt-add-repository ppa:ansible/ansible

# Install Ansible.
apt-get -y update
apt-get -y install ansible
