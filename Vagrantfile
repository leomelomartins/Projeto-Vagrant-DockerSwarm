# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.define "containerMaster" do |containerMaster|

 	server.vm.box = "ubuntu/bionic64"
 	server.vm.network "forwarded_port", guest: 9000, host: 9002

  server.vm.network "private_network", ip: "192.168.50.2"
	server.vm.hostname = "containerMaster"
      server.vm.provider "virtualbox" do |vb|
  	         vb.memory = "4096"
   	         vb.name = "containerMaster"
      end

  server.vm.provision "shell" do |s|
		s.inline = "sudo apt update"
            s.inline = "sudo apt -y upgrade"
	end

end
config.vm.define "containerWorker" do |containerWorker|

 	client.vm.box = "ubuntu/bionic64"
      client.vm.network "private_network", ip: "192.168.50.3"
	client.vm.hostname = "containerWorker"
  client.vm.provider "virtualbox" do |vb|
  	vb.memory = "2048"
   	vb.name = "containerWorker"
  end

  containerhost02.vm.provision "shell" do |s|
    s.inline = "sudo apt update"
    s.inline = "sudo apt -y upgrade"
	end

end
end
