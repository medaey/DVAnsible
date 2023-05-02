# Vagrantfile
Vagrant.configure("2") do |config|
  config.vm.provider "docker" do |docker|
    docker.image = "my-debian"
    docker.has_ssh = true
    docker.remains_running = true
    docker.cmd = ["/bin/bash", "-c", "apt-get update && service ssh restart && sleep infinity"]
  end

  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"

  config.vm.synced_folder ".", "/vagrant"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "main.yml"
    ansible.verbose = "v"
  end
end
