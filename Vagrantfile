Vagrant.configure("2") do |config|
    config.vm.define "web" do |web|
        web.vm.box = "jborean93/WindowsServer2016"
        web.vm.hostname = "ansible-practice-web"
        #Cannot configure networks using Hyper-V as a provider
        web.vm.network "private_network", ip: "192.168.100.101"
        web.vm.provision "shell", path: "ConfigureRemotingForAnsible.ps1"
    end
end