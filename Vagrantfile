Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 512
    v.cpus = 1
  end
  
  config.vm.network "forwarded_port", guest: 80, host: 80
  
  config.ssh.insert_key = false
  config.ssh.forward_agent = true

  $script = <<SCRIPT
    wget --output-document="/tmp/hugo.deb" https://github.com/spf13/hugo/releases/download/v0.14/hugo_0.14_amd64.deb
    dpkg -i /tmp/hugo.deb
    
    apt-get install ruby-dev -y   
    gem install travis
    echo y | travis --version
SCRIPT
  config.vm.provision "shell", inline: $script
end