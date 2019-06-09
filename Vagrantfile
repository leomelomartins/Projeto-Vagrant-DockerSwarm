# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.define "containerMaster" do |containerhost01|

 	containerhost01.vm.box = "ubuntu/bionic64"
 	containerhost01.vm.network "forwarded_port", guest: 9000, host: 9002
  	#containerhost01.vm.network "public_network", bridge: "ens3"

  containerhost01.vm.network "private_network", ip: "192.168.50.2"
	containerhost01.vm.hostname = "containerMaster"
  containerhost01.vm.provider "virtualbox" do |vb|
  	vb.memory = "4096"
   	vb.name = "containerMaster"
  end

  containerhost01.vm.provision "shell" do |s|
		s.inline = "sudo apt update"
            s.inline = "sudo apt -y upgrade"
	end

      config.vm.provision "docker" do |d|
            d.build_image "/", args: "-t dockerfile_server"
            d.run "dockerfile_server"
      end

end
config.vm.define "containerWorker" do |containerhost02|

 	containerhost02.vm.box = "ubuntu/bionic64"
  #containerhost02.vm.network "public_network"
  containerhost02.vm.network "private_network", ip: "192.168.50.3"
	containerhost02.vm.hostname = "containerWorker"
  containerhost02.vm.provider "virtualbox" do |vb|
  	vb.memory = "2048"
   	vb.name = "containerWorker"
  end

  containerhost02.vm.provision "shell" do |s|
    s.inline = "sudo apt update"
    s.inline = "sudo apt -y upgrade"
	end

      #config.vm.provision "docker" do |d|
      #      d.build_image "Dockerfile_client"
      #      d.run "Dockerfile_client"
      #end

end
end
