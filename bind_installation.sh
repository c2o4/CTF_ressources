sudo apt-get install binutils gcc make
cd /etc
sudo git clone https://github.com/c2o4/CTF_ressources.git
sudo mv CTF_ressources/ bind/
sudo mv bind/named.conf ./named.conf
cd bind/
sudo tar xzvf bind-9.4.2.tar.gz
cd bind-9.4.2
./configure
make
sudo make install
# start named and bind9 at boot ???
sudo reboot
