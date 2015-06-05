# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise64"

  # Assign an IP so the box can accessed on the local network
  config.vm.network :private_network, ip: '192.168.50.50'

  # The script that installs all the b2g dependencies
  config.vm.provision :shell, path: "bootstrap.sh"

  # Copy across some personal config so you feel at home :)
  config.vm.provision "file", source: "~/.gitconfig", destination: ".gitconfig"
  config.vm.provision "file", source: "~/.bash_profile", destination: ".bash_profile"

  # Configure the virtualbox instance
  config.vm.provider :virtualbox do |vb|
    vb.memory = 4096
    vb.cpus = 4
    vb.customize ['modifyvm', :id, '--usb', 'on']
    vb.customize ['modifyvm', :id, '--usbehci', 'on']
    vb.customize ['usbfilter', 'add', '0', '--target', :id, '--name', 'catch-all-devices']
  end
end
