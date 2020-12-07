sudo apt-get install binutils gcc make
cd /etc
sudo git clone https://github.com/c2o4/CTF_ressources.git
sudo mv CTF_ressources/ bind/
sudo mv bind/named.conf ./named.conf
sudo mv bind/bind9.service /etc/systemd/system/bind9.service
cd bind/
sudo tar xzvf bind-9.4.2.tar.gz
cd bind-9.4.2
./configure
make
sudo make install
sudo named -g #Checks configuration
sudo crontab -e #add @reboot named
sudo nano /etc/netplan/00-installer-config.yaml
sudo reboot
