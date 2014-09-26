# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.omnibus.chef_version = '11.8.2'
  config.berkshelf.enabled = true

  config.vm.provider "virtualbox" do |v, override|
    override.vm.box = 'centos-6.5'
    override.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_#{override.vm.box}_chef-provisionerless.box"
    config.vm.hostname = '192.168.50.4'
    config.vm.network "private_network", ip: "192.168.50.4"
    config.cache.scope = :box
    config.cache.auto_detect = true

    v.memory = 1024
    v.cpus = 2
  end

  config.vm.provision :chef_solo do |chef|
    chef.json = {
    }
    chef.run_list = [
      'recipe[gitweb::default]'
    ]
  end
end
