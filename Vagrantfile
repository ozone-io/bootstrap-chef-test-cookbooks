# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "precise" do |precise|
    precise.vm.box = "precise64"
    precise.vm.box_url = "http://files.vagrantup.com/precise64.box"
  end

  #forward ssh in order to git push to github
  config.ssh.forward_agent = true
 
  #install librarian chef and its dependencies
  config.vm.provision "shell",
    inline: "apt-get update && apt-get install -y build-essential git && gem install librarian-chef --no-ri --no-rdoc --verbose && cd /vagrant && librarian-chef install --verbose"
end
