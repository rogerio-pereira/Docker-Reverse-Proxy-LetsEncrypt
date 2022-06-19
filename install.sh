#cria usuario
adduser rogerio
usermod -aG sudo rogerio
usermod -aG docker rogerio
usermod -aG ssh rogerio

#acessa com usuario novo
#su - rogerio

#chave ssh
mkdir /home/rogerio 
mkdir /home/rogerio/projects
mkdir /home/rogerio/.ssh
touch /home/rogerio/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCz6+tvbmQxCfsIVQFFqb9FG9L4aZDX0nzWaTqrn31uG8gjCdKrfmG4S+mvWp1z9Qev6nLQA1aAJwe4McK17uSqQTpKM+4HwdQ/hTmdUEuLSNKWSUsjKYxLZeVgW8iay0ONoaTNG6TrEAh3WqmCgnNp0ENf6REEl3s6ARjjwMfmiA5zz91NR1HetS7UhNyK6hdAhtnuq1w7Y8mFf2KCDDW/4XTddPHeLNRDQ4znc/fIDVNXm5VdFoL0mO6/T/FlIFrkA3WueMIyEq5KNfQuQWy5e7QdMM7SALjcHz5EhD71AEFs2X9JZJcJ+xTXJLCqZgKFQwo40GlggphXGdtCvdkR farofa@cyborg" > /home/rogerio/.ssh/authorized_keys
chown rogerio /home/rogerio/.ssh/authorized_keys
chmod 600 /home/rogerio/.ssh/authorized_keys

#desabilita acesso root
#sudo echo "PermitRootLogin no" >> /etc/ssh/sshd_config
#sudo echo "PasswordAuthentication no" >> /etc/ssh/sshd_config
#sudo service sshd restart

#SWAP
sudo fallocate -l 2G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo cp /etc/fstab /etc/fstab.bak
sudo echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
sudo sysctl vm.swappiness=10
sudo sysctl vm.vfs_cache_pressure=50
sudo echo "vm.swappiness=10" >> /etc/sysctl.conf
sudo echo "vm.vfs_cache_pressure=50" >> /etc/sysctl.conf

#monitoring
#curl -sSL https://repos.insights.digitalocean.com/install.sh | sudo bash

#firewall
#sudo ufw allow OpenSSH
#sudo ufw enable

#update
sudo apt-get update
sudo apt-get upgrade -y

#create network
docker network create proxy

#reboot
#reboot

#composer install
#docker run --rm -it --volume $(pwd):/app prooph/composer:7.2 install --ignore-platform-reqs