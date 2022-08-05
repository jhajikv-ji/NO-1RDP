ip addr show docker0
docker pull wettyoss/wetty
docker run  -d -p 3000:3000 wettyoss/wetty --ssh-host=172.17.0.1
sleep 10
wget -O cli https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64  
chmod +x ./cli && ./cli --url http://localhost:3000/wetty &>> cat.txt &
while :; do cat cat.txt | sed '5!d' | sed 's:[2022]*:[&:' |  sed 's:https*:](&:' |  sed 's:trycloudflare.com*:&/wetty):' ; sleep 3 ; done 




##. curl https://raw.githubusercontent.com/jhajikv-ji/no/main/docker-wetty.sh | bash

#
