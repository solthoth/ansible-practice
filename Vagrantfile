# General notes
# Cannot configure networks properly using Hyper-V as a provider
Vagrant.configure("2") do |config|
    config.vm.provider "hyperv" 
    config.vm.network "private_network", type: "dhcp"
    config.vm.synced_folder ".", "/vagrant", disabled: true 

    $script = <<-SCRIPT
    sudo apt-get install python-pip -y
    sudo pip install ansible
    SCRIPT
    config.vm.define "ansible-host" do |machine|
        machine.vm.box = "generic/ubuntu1804"
        machine.vm.hostname = "ansible-host"
        machine.vm.provision "shell", inline: $script
    end

    config.vm.define "swarm-master" do |machine|
        machine.vm.box = "generic/ubuntu1804"
        machine.vm.hostname = "s1-master-1"
    end

    config.vm.define "swarm-worker1" do |machine|
        machine.vm.box = "generic/ubuntu1804"
        machine.vm.hostname = "s1-agent-1"
    end

    config.vm.define "swarm-worker2" do |machine|
        machine.vm.box = "generic/ubuntu1804"
        machine.vm.hostname = "s1-agent-2"
    end
=begin
    config.vm.define "web" do |machine|
        machine.vm.box = "jborean93/WindowsServer2016"
        machine.vm.boot_timeout = 360;
        machine.vm.hostname = "ansible-practice-web"
        machine.vm.provision "shell", path: "ConfigureRemotingForAnsible.ps1"
    end

    config.vm.define "app" do |machine|
        machine.vm.box = "jborean93/WindowsServer2016"
        machine.vm.boot_timeout = 360;
        machine.vm.hostname = "ansible-practice-app"
        machine.vm.provision "shell", path: "ConfigureRemotingForAnsible.ps1"
    end
=end
end