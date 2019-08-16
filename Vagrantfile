Vagrant.configure("2") do |config|
    config.vm.define "web" do |web|
        web.vm.box = "mwrock/Windows2012R2"
        web.vm.hostname = "ansible-practice-web"
        #Cannot configure networks using Hyper-V as a provider
        #config.vm.network "private_network", type: "dhcp"
        web.vm.network "private_network", ip: "192.168.100.101"
    end
end