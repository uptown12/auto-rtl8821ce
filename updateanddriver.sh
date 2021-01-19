# This script should automate the setup of ubuntu distros
# Firstly we need to update and get the system ready
sudo apt update -y
sudo apt upgrade -y
# all should be set for the installation of tools
sudo apt install make -y
sudo apt install bc -y
sudo apt install dkms -y
sudo apt install wget -y
# It should be good for the tools neeeden, now install wifi driver
sudo wget https://github.com/tomaspinho/rtl8821ce
# It is in store
cd rtl8821ce
# now we should install it with the help of the tools above
chmod +x dkms-install.sh
sudo ./dkms-install.sh
# now it is installed, we just need to activate it
sudo modprobe 8821ce
# wifi should be set correctly :)
