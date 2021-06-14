cd /opt
mkdir chrome && cd chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
sudo apt install curl -y

# kubectl + git
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

# kubectx
sudo mkdir -p /opt/kubectx && cd /opt/kubectx && sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
sudo mkdir -p ~/.kube

# aws-cli
sudo apt-get install aws-cli
sudo mkdir -p ~/.aws

# kops
sudo mkdir -p /opt/kops && cd /opt/kops
sudo curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x ./kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops
