ip addr show docker0
docker pull wettyoss/wetty
docker run  -d -p 3000:3000 wettyoss/wetty --ssh-host=172.17.0.1
wget -O cli https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64  
chmod +x ./cli && ./cli --url http://localhost:3000/wetty &>> cat.txt &
sudo service ssh restart
printf "root\nroot" | sudo passwd root        
echo "PasswordAuthentication yes" >>sshd_config
echo "PermitUserEnvironment yes" >>sshd_config
echo "PermitRootLogin yes" >>sshd_config
sudo cat sshd_config >> /etc/ssh/sshd_config
sudo service ssh restart
rm sshd_config
cat cat.txt | sed '5!d' > link1
cat link1 | sed 's:[2022]*:[&:' |  sed 's:https*:](&:' |  sed 's:trycloudflare.com*:&/wetty):' > link2
cat link2 > cat.txt
cat wetty.md >> link2
cat link2 > wetty.md
#while :; do cat cat.txt | sed '5!d' | sed 's:[2022]*:[&:' |  sed 's:https*:](&:' |  sed 's:trycloudflare.com*:&/wetty):' ; sleep 3 ; done 
while :; do cat cat.txt ; sleep 3 ; done 




##. curl https://raw.githubusercontent.com/jhajikv-ji/no/main/docker-wetty.sh | bash

#
