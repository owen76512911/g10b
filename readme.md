# Get your lab!
Many companies want a lab, a kind of research workspace. And so do some people. That's a good way to understand, learn, and improve some tools, let me say devops tools. And in order to setup a such lab, they install the pool of tools.

At this point, I think to myself "They install!?" Ouch! We are speaking of an approch of automation and scripting way to configure and deploy, aren't we?  So I decide to code my own lab. The goal of this project is to launch an installer and wait and see for the result. The side effect is that I can install it again and again, I can test improvements easily without fearing a crash. And in fact if I crash my lab I just have to reinstall my master branch. 
In my opinion a such lab should be an Infra-as-code Lab.

As a starter, Vagrant provisions the VMs and bootstraps a basic installation (puppet master or puppet agent). Puppet master installs itself and with the recurring appliance (*puppet agent --test*) installs the others servers. Ambitious ? I'm not sure, that's the real world.

Anyway, currently the project V0.2 allows you automatically to:
* pop VMs with Vagrant
* Bootstap installation of Puppet-master
* Feed Puppet-master with modules and manifests for itself
* Puppet-master configures itself

## Prerequisites
To use this tools, you need a hosting plateform with:
* git
* Vagrant 
* VirtualBox

## Installation
On your host (for example your laptop with virtualBox), follow the step by step commands below:

    env GIT_SSL_NO_VERIFY=true git clone https://github.com/oloc/g10b.git
    cd ./g10b/vagrant
    vagrant up

This commands will pop the needed VMs in virtualbox and install the stuff.
If you possess a datacenter or a cloud and if you want to test the installation you have to launch the *install* scripts in the appropriate machines.

## Configuration
The infrastructure is described in the **vagrant/infra.json** file. 

The configuration of the servers is described in the puppet manifests and modules.

## Versions
* _V0.3 - Add Rundeck, Gitlab and Jenkins (Work in progress)_
* V0.2 - Vagrant pops the infra, and bootstap the installation of Puppet-master. Puppet-master feeds and configures itself.
* V0.1 - script of installation of puppet-master on a system. It's more than a bootstrap. It's a bootstrap installing puppet-master and a feeder of modules and manifests needed to configure puppet itself by itself.


## My own configuration
I do not possess a datacenter or a cloud, so I proceed with VMs. To help you if you are in troubles, here is my own configuration:

* Operating System: Ubuntu 14.04.1 LTS, Trusty Tahr
* Kernel: 3.13.0-39-generic
* MoBo: W54_55SU1,SUW
* CPU: Intel(R) Core(TM) i7-4712MQ CPU @ 2.30GHz
* Memory: 2x 8GiB SODIMM DDR3 Synchrone 1600 MHz (0,6 ns)
* VirtualBox 4.3.10 r93012
