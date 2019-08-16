Vagrant.configure("2") do |config|
    config.vm.define "web" do |web|
        web.vm.box = "jborean93/WindowsServer2016"
        web.vm.hostname = "ansible-practice-web"
        #Cannot configure networks using Hyper-V as a provider
        web.vm.network "private_network", ip: "192.168.100.101"
        web.vm.provision "shell" do |shell|
            shell.inline = "New-Item -ItemType Directory -Force -Path C:\\Provision"
        end
        web.vm.provision "file", source: "ConfigureRemotingForAnsible.ps1", destination: "C:\\Provision\\ConfigureRemotingForAnsible.ps1"
        web.vm.provision "shell" do |shell|
            shell.inline = "C:\\Provision\\ConfigureRemotingForAnsible.ps1"
        end
    end
end