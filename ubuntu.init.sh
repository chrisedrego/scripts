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

# brightness


# terraform
sudo mkdir -p /opt/terraform && cd /opt/terraform 
sudo wget https://releases.hashicorp.com/terraform/1.0.0/terraform_1.0.0_linux_amd64.zip
sudo unzip terraform_1.0.0_linux_amd64.zip
sudo rm -rf terraform_1.0.0_linux_amd64.zip 
sudo chmod +x terraform
sudo mv ./terraform /usr/bin/

# helm
sudo mkdir -p /opt/helm && cd /opt/helm
sudo wget https://get.helm.sh/helm-v3.4.1-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin
sudo tar xvf helm-v3.4.1-linux-amd64.tar.gz
sudo rm -rf helm-v3.4.1-linux-amd64.tar.gz
sudo rm -rf linux-amd64/


# nodejs
sudo apt-get update
sudo apt install nodejs -y
sudo apt install npm -y

# priturnl
sudo tee /etc/apt/sources.list.d/pritunl.list << EOF
deb https://repo.pritunl.com/stable/apt bionic main
EOF

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
sudo apt-get update
sudo apt-get install pritunl-client-electron


