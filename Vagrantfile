# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

$script = <<SCRIPT
if ! type "berks" > /dev/null; then
  apt-get -y install git
  apt-get update 
  wget https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.2.0-2_amd64.deb -O chefdk.deb
  dpkg -i chefdk.deb
fi
cd /vagrant
rm -rf /vagrant/cookbooks 
berks vendor cookbooks
SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "saucy64" do |saucy64|
     saucy64.vm.box = "chef/ubuntu-13.10"
  end

  #forward ssh in order to git push to github
  config.ssh.forward_agent = true
 
  #install librarian chef and its dependencies
  config.vm.provision "shell", inline: $script
  
end
