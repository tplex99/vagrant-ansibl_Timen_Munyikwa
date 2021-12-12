



Vagrant.configure("2") do |config|
	#config.vm.provision :shell, path: "bootstrap.sh" ##commented voor tests sneller te kunnen maken 
	#config.vm.network :forwarded_port, guest: 80, host: 4567
	(1..2).each do |i|
		  # Defining VM properties
		  config.vm.define "vmA#{i}" do |server|
			  server.vm.box = "generic/ubuntu1804"
			  server.vm.hostname = "webserver#{i}"
			  server.vm.network :forwarded_port, guest: 80, host: "4567#{i}"
			  	server.vm.provision "shell", path: "bootstrap.sh" 
				  server.vm.network "private_network", ip: "192.168.10.10#{i}", virtualbox__intnet: "mynetwork"
			  # Specifying the provider as VirtualBox and naming the VM's
		  server.vm.provider :virtualbox do |node|
				  # The VM will be named as vm{i}
				  node.name = "V-webserver#{i}"
				  node.memory = 1024
				  node.cpus = 2  
				  node.gui = true
			  end
		  end
	  end
	config.vm.define "database" do |database|
		  database.vm.box = "generic/ubuntu1804"
		  database.vm.hostname = "database"
		  database.vm.network :forwarded_port, guest: 80, host: "4572"
		  database.vm.provision "shell", path: "bootstrap.sh"
		  	database.vm.network "private_network", ip: "192.168.10.20", virtualbox__intnet: "mynetwork"
		  database.vm.provider "virtualbox" do |node2|
		  	node2.name = "V-database"
			node2.gui = true
			node2.memory = 1024
			node2.cpus = 2 
		  end
		  end

	config.vm.define "ansible" do |ansible|
		  ansible.vm.box = "generic/ubuntu1804"
		  ansible.vm.hostname = "ansible"
		  ansible.vm.network :forwarded_port, guest: 80, host: "4573"
		  ansible.vm.provision "shell", path: "ansiblebootstrap.sh"
			ansible.vm.network "private_network", ip: "192.168.10.21", virtualbox__intnet: "mynetwork"
		  ansible.vm.synced_folder "C:/Users/tplex/Desktop/playbooks_-_Copy" , "/etc/ansible/playbooks" 
		  ansible.vm.provider "virtualbox" do |node3|
			
		  	node3.name = "V-ansible"
			node3.gui = true
			node3.memory = 1024
			node3.cpus = 2
		  end
		  end

		
	  end
  
  
  # kan zijn dat je "C:\Users\tplex\VirtualBox VMs" moet wissen 
  