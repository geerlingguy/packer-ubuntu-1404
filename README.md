# Packer Example - Ubuntu 14.04 minimal Vagrant Box

**Current Ubuntu Version Used**: 14.04.1 (Not using the latest kernel due to [this bug](https://github.com/geerlingguy/packer-ubuntu-1604/issues/5))

**Pre-built Vagrant Box**:

  - [`vagrant init geerlingguy/ubuntu1404`](https://vagrantcloud.com/geerlingguy/boxes/ubuntu1404)
  - See older versions: http://files.midwesternmac.com/

This example build configuration installs and configures Ubuntu 14.04 x86_64 minimal using Ansible, and then generates a Vagrant box file for VirtualBox.

The example can be modified to use more Ansible roles, plays, and included playbooks to fully configure (or partially) configure a box file suitable for deployment for development environments.

## Requirements

The following software must be installed/present on your local machine before you can use Packer to build the Vagrant box file:

  - [Packer](http://www.packer.io/)
  - [Vagrant](http://vagrantup.com/)
  - [VirtualBox](https://www.virtualbox.org/) (if you want to build the VirtualBox box)
  - [Ansible](http://docs.ansible.com/intro_installation.html)

## Usage

Make sure all the required software (listed above) is installed, then cd to the directory containing this README.md file, and run:

    $ packer build ubuntu1404.json

After a few minutes, Packer should tell you the box was generated successfully.

## Testing built boxes

There's an included Vagrantfile that allows quick testing of the built Vagrant boxes. From this same directory, run the following command after building the box:

    $ vagrant up

## License

MIT license.

## Author Information

Created in 2014 by [Jeff Geerling](https://www.jeffgeerling.com/), author of [Ansible for DevOps](https://www.ansiblefordevops.com/).
