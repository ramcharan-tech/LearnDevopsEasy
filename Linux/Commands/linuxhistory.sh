#CHECK OS
dpkg -i (debian)/ rpm -i (centos)
uname -m
cpu | grep Architecture
arch
dpkg --print-architecture
lsb_release -a
neofetch

#INATALLATIONS
curl -O https://storage.googleapis.com/golang/go1.20.6.linux-amd64.tar.gz
tar -xvf go1.20.6.linux-amd64.tar.gz (or) sudo tar -C /usr/local -xzf go1.20.6.linux-amd64.tar.gz
sudo mv go /usr/local
echo "export GOPATH=＄HOME/work" >> ~/.profile 
echo "export PATH=＄PATH:/usr/local/go/bin:＄GOPATH/bin" >> ~/.profile
source ~/.profile

# APT
sudo apt-get update -y && sudo apt-get upgrade -y
apt show apache2-utils # to show dependencies
apt-mark showmanual # to get list of manually installed packages
apt list --manual-installed=true # https://www.cyberciti.biz/faq/apt-get-list-packages-are-installed-on-ubuntu-linux/
apt list --upgradeable
dpkg --list 'apache*'
apt-get update && apt-get install apt-file -y && apt-file update && apt-get install vim 
sudo apt remove vim -y
sudo apt purge vim -y # including config files
sudo apt autoremove -y --purge # remove any unused dependencies
sudo apt clean # removing outdated packages cache /var/cache/apt/archives/
apt/apt-get autoclean # cleans obsolete deb-packages, less than clean https://askubuntu.com/questions/3167/what-is-difference-between-the-options-autoclean-autoremove-and-clean


curl -fSL -o "/usr/local/bin/grr" "https://github.com/grafana/grizzly/releases/download/v0.2.0/grr-linux-amd64"
chmod a+x "/usr/local/bin/grr"
mkdir tg
printenv
$OLDPWD
echo $OLDPWD
echo $GRAFANA_URL
vim folder.yaml
export GRAFANA_USER=admin
clear
vim folder.yaml
vim dashboard.yaml
sudo  /mnt/*
"C:\Users\RA_Charan.Kette\OneDrive - phreesia.com\Documents\Ubuntu\prod-dashboard.yaml"
sudo cp /mnt/c/Ubuntu/prod-dashboard.yaml . grr apply prod-dashboard.yaml
sudo apt remove openssh-server
sudo apt install openssh-server
sudo service ssh status
sudo service ssh start
sudo adduser admin
sudo less /etc/passwd
sudo vim /etc/passwd
less /etc/group
deluser adm
adduser admin
adduser charan
less etc/group
less /etc/group
usermod -Gmanagement charan
usermod -Gcharan charan
usermod -Gadmin charan
usermod -d /home/charan charan
usermod -d/home/charan charan
apt-get install
clear
history
ifconfig
sudo chmod a+rwx /root
apt update
cat /etc/os-release
apt install iputils-ping
apt install dnsutils
nslookup %ipaddress%
dig google.com ( Domain Information Gopher)
nbtstat -A %ipaddress%

#SSL
ssh-keygen -t rsa
ssh-copy-id -i ~/.ssh/mykey.pub thor@app01
ssh 'thor@app01'
sudo yum install -y openssl
 sudo openssl req -new -newkey rsa:2048 -nodes -keyout app01.key -out app01.csr
  sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout app01.key -out app01.crt
  sudo service httpd restart
  echo | openssl s_client -showcerts -servername app01.com -connect app01:443 2>/dev/null | openssl x509 -inform pem

  pm2 start app.js -i 4
  sudo sed -i 's/8080/9090/g' apache-tomcat-8.5.53/conf/server.xml 
  sudo ./apache-tomcat-8.5.53/bin/startup.sh 
  nohup command-with-options &
  pkill python; cd /opt/simple-webapp-flask/; nohup python app.py &

#DESKTOP GUI WSL
sudo apt install -y xrdp xfce4 xfce4-goodies

sudo cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak
sudo sed -i 's/3389/3390/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/max_bpp=32/#max_bpp=32\nmax_bpp=128/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/xserverbpp=24/#xserverbpp=24\nxserverbpp=128/g' /etc/xrdp/xrdp.ini
echo xfce4-session > ~/.xsession

sudo nano /etc/xrdp/startwm.sh
startxfce4
sudo /etc/init.d/xrdp start


#LINUX USEFUL LINKS
https://linuxhint.com/
https://askubuntu.com/
https://www.cyberciti.biz/
https://bash.cyberciti.biz/guide/Main_Page
  #ARCHIVE
    69  kubectl config current-context
   70  kubectl config view
   71  \kubectl config use-context
   72  kubectl config use-context rancher-context
   73  kubectl config use-context rancher-desktop
   74  kubectl get namespaces
   75  helm search repo grafana
   76  helm repo add grafana https://grafana.github.io/helm-charts
   77  helm install grafana-demo grafana/grafana
   78  export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=grafana,app.kubernetes.io/instance=grafana-demo" -o jsonpath="{.items[0].metadata.name}")
   79  kubectl get secret --namespace default grafana-demo -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
   80  helm install grafana-agent-demo  grafana/grafana-agent
   81  kubectl get pods
   82  kubectl exec --stdin --tty grafana-demo-66db5bcffd-pdt9j -- /bin/bash
   83  helm search repo mimir
   84  helm install grafana-mimir-demo grafana/mimir-distributed
   85  kubectl get configmap
   86  kubectl edit configmap grafana-agent-demo
   87  kubectl exec --stdin --tty grafana-demo-66db5bcffd-pdt9j -- bin/bash
   88  kubectl exec --stdin --tty grafana-demo-66db5bcffd-pdt9j -- /bin/bash
   89  kubectl exec --stdin --tty grafana-agent-demo-ctpdh -- /bin/bash
   90  kubectl get pods
   91  kubectl logs grafana-agent-demo-m55dd --watch
   92  kubectl logs grafana-agent-demo-m55dd --help
   93  kubectl logs grafana-agent-demo-m55dd -f
   94  htpasswd -c auth k8s-app-logs