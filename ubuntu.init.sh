cd /opt
mkdir chrome && cd chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
sudo apt install curl -y

# kubectl + git + 
sudo mkdir -p /opt/kubectl && cd /opt/kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv kubectl /usr/local/bin
sudo apt-get install git -y
sudo apt-get remove --purge libreoffice* -y || echo "LibreOffice Pre-Installed Package"
sudo apt-get clean
sudo apt-get autoremove -y


# vscode
sudo apt-get update
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code -y
