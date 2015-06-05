# b2g-vm

A Vagrant VM and some scripts to make building B2G easy.

## Prerequisites

- Download [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Download [VirtualBox Extension Pack](https://www.virtualbox.org/wiki/Downloads)
- Download [Vagrant](https://www.vagrantup.com/)

## Usage

1. `$ git clone https://github.com/wilsonpage/b2g-vm.git`
2. `$ cd b2g-vm`
3. `$ vagrant up`
4. `$ vagrant ssh`
5. Plug in your phone via USB (Flame needs [latest base-image](https://developer.mozilla.org/en-US/Firefox_OS/Phone_guide/Flame/Updating_your_Flame))
6. `$ /vagrant/add-device.sh` (make you device visible to adb)
7. `$ git clone https://github.com/mozilla-b2g/B2G.git`
8. `$ cd B2G`
9. `$ ./config.sh [flame-kk|nexus-4|..]` ([device list](https://developer.mozilla.org/en-US/Firefox_OS/Preparing_for_your_first_B2G_build#Clone_B2G_repository))
6. `$ ./build.sh`

Wait a very long time (up to 2 hours on fast connection) ... B2G should now be built, you're ready to flash.

8. `./flash.sh [gecko|gaia]` ([full instructions](https://developer.mozilla.org/en-US/Firefox_OS/Installing_on_a_mobile_device#Flashing_your_phone))
