# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant::Config.run do |config|
    config.vm.box = "lucid32"
    config.vm.box_url = "http://files.vagrantup.com/lucid32.box"
    config.vm.network :hostonly, "192.168.33.10"
    config.vm.host_name = "localhost"
    config.vm.provision :chef_solo do |chef|
       chef.cookbooks_path = "cookbooks"
       chef.roles_path = "roles"
       chef.add_role "nutch"
     end


  #   chef.validation_client_name = "ORGNAME-validator"
  config.vm.customize ["modifyvm", :id,"--memory", "4096"]
end

