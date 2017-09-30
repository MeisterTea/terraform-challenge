# Terraformed Ansible dockerized jenkins

<p align-items="center">
<img alt="terraform" src="https://www.terraform.io/assets/images/logo-hashicorp-3f10732f.svg" float="left" width="200" >
<img alt="ansible" src="https://upload.wikimedia.org/wikipedia/commons/2/24/Ansible_logo.svg" float="left" height="100" width="100" >
<img alt="docker" src="https://upload.wikimedia.org/wikipedia/commons/4/4e/Docker_%28container_engine%29_logo.svg" float="left" width="200" >
<img alt="jenkins" src="https://upload.wikimedia.org/wikipedia/commons/e/e3/Jenkins_logo_with_title.svg" float="left" width="200" >
</p>

## What is it ?

This project is a simple showcase of using terraform to deploy a E2C server on the AWS cloud.

Ansible is then executed in order to install docker and launches a container (here a jenkins image).

The ami image is an Ubuntu 16.04 one (ami-1e3339e71).

## Getting Started

Edit the config.tf file by filling in your AWS API keys:

- access_key
- secret_key
- optionnal: region

Add your SSH keys in the keys folder as this :

- keys/id_rsa.pem
- keys/id_rsa.pub

Then run these two commands:

```
make init
```

```
make build
```

Note down the ip of the instance : 

```
make ip
```

You can then access the hosted jenkins on port 8080.

### Commands

- make init  : Initializes the terraform configuration.
- make build : Bootstraps the server.
- make clean : Destroys the instance.
- make show  : Displays data about the instance.
- make ip    : Displays the ip of the instance.
- make cli   : SSH to the instance.

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html)
- [Ansible](http://docs.ansible.com/ansible/latest/intro_installation.html)

