Vagrant.configure("2") do |config|
#=begin
    config.vm.define "web" do |web|
        web.vm.box = "jborean93/WindowsServer2016"
        web.vm.boot_timeout = 360;
        web.vm.hostname = "ansible-practice-web"
        web.winrm
        #Cannot configure networks using Hyper-V as a provider
        web.vm.network "private_network", ip: "192.168.100.101"
        web.vm.provision "shell", path: "ConfigureRemotingForAnsible.ps1"
    end

    config.vm.define "app" do |app|
        app.vm.box = "jborean93/WindowsServer2016"
        app.vm.boot_timeout = 360;
        app.vm.hostname = "ansible-practice-app"
        #Cannot configure networks using Hyper-V as a provider
        app.vm.network "private_network", ip: "192.168.100.102"
        app.vm.provision "shell", path: "ConfigureRemotingForAnsible.ps1"
    end
#=end
    config.vm.define "swarm-master" do |master|
        master.vm.box = "generic/ubuntu1804"
        master.vm.hostname = "ansible-practice-swarm-master"
        #Cannot configure networks using Hyper-V as a provider
        master.vm.network "private_network", ip: "192.168.100.201"
    end

    config.vm.define "swarm-worker1" do |agent1|
        agent1.vm.box = "generic/ubuntu1804"
        agent1.vm.hostname = "ansible-practice-swarm-agent1"
        #Cannot configure networks using Hyper-V as a provider
        agent1.vm.network "private_network", ip: "192.168.100.202"
    end

    config.vm.define "swarm-worker2" do |agent2|
        agent2.vm.box = "generic/ubuntu1804"
        agent2.vm.hostname = "ansible-practice-swarm-agent2"
        #Cannot configure networks using Hyper-V as a provider
        agent2.vm.network "private_network", ip: "192.168.100.203"
    end
end