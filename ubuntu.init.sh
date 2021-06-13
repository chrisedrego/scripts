cd /tmp
mkdir chrome && cd chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
sudo apt install curl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv kubectl ./usr/local/bin
sudo apt-get install git -y
sudo apt-get remove --purge libreoffice* -y
sudo apt-get clean
sudo apt-get autoremove
