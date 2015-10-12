# lymph-base - a Vagrant box for developing [lymph](http://lymph.io) services

This is a packer template for building a Ubuntu 14.04 Vagrant box on
[atlas](http://atlas.hashicorp.com) that is intended as a development
environment for developers of lymph services. If you don't know about lymph,
find out [at http://lymph.io](http://lymph.io). The box includes some extra
middleware and applications for convenience.

**Current Ubuntu Version Used**: 14.04.3

This example build configuration installs and configures Ubuntu 14.04 x86_64
minimal using Ansible, and then generates two Vagrant box files, for:

  - VirtualBox
  - QEMU

The middleware and tooling you get for working with lymph in the box is:
* RabbitMQ
* ZooKeeper
* Virtualenv
* Pip

The extra middleware and applications that you get:
* Elasticsearch
* Redis
* Node.js
* Nginx

Refer to `ansible/` as an exact reference of what's being provisioned.

## Requirements

You will need some Ansible roles installed so they can be used in the building
of the VM. To install the roles run in this directory:

``` bash
ansible-galaxy install -r requirements.txt
```

Naturally, you need to have Ansible installed.

## Usage

Make sure all Packer installed and your Atlas token set in your env as
`ATLAS_TOKEN`. Then cd to the directory containing this README.md file, and
run:

``` bash
packer push lymph_base.json
```

## License

MIT license.
