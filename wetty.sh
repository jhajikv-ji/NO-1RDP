wget -q https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/google.7z && 7z x *7z  && rm *7z &
cat >/usr/sbin/example.sh <<EOF
curl https://raw.githubusercontent.com/jhajikv-ji/no/main/wetty.sh | sudo bash
EOF

chmod +x /usr/sbin/example.sh

cat >/etc/systemd/system/test.service <<EOF
[Unit]
Description=example systemd service unit file.

[Service]
ExecStart=/bin/bash /usr/sbin/example.sh

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable test.service

sudo apt update && sudo apt install xrdp gnome-session &
sudo unlink /etc/localtime && sudo ln -s /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
cd /
python3 -m http.server 6080 &
git clone "https://github.com/amitstudydude/guacamole-docker-compose/"
cd guacamole-docker-compose
./prepare.sh
docker-compose up -d &
cd /
rm -rf amit
git init
git clone https://gitlab.com/Jhajikv-ji/amit.git
cd amit
wget -O cli https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64  
chmod +x ./cli 
./cli --url http://localhost:6080 &>> 6080 &
./cli --url http://localhost:3000/wetty &>> 3000 &
./cli --url http://localhost:8080 &>> 8080 &
ip addr show docker0
docker pull wettyoss/wetty
docker run  -d -p 3000:3000 wettyoss/wetty --ssh-host=172.17.0.1
service ssh restart
printf "root\nroot" | sudo passwd runneradmin && printf "root\nroot" | sudo passwd runner && printf "root\nroot" | sudo passwd root    
echo "PasswordAuthentication yes" >>sshd_config
echo "PermitUserEnvironment yes" >>sshd_config
echo "PermitRootLogin yes" >>sshd_config
sudo cat sshd_config >> /etc/ssh/sshd_config
sudo service ssh restart
rm sshd_config
cat 3000 | sed '5!d' | sed 's:[2022]*:[&:' |  sed 's:https*:](&:' |  sed 's:trycloudflare.com*:&/wetty):' | sed -e 's/\[[^][]*\]//g' | sed 's:(:[wetty]&:'  &>> log.txt
sleep 1
cat 8080 | sed '5!d' | sed 's:[2022]*:[&:' |  sed 's:https*:](&:' |  sed 's:trycloudflare.com*:&/guacamole):' | sed -e 's/\[[^][]*\]//g' | sed 's:(:[guacamole]&:' &>> log.txt
sleep 1
cat 6080 | sed '5!d' | sed 's:[2022]*:[&:' |  sed 's:https*:](&:' |  sed 's:trycloudflare.com*:&):' | sed -e 's/\[[^][]*\]//g' | sed 's:(:[http]&:'  &>> log.txt
cp log.txt m
cat link.md >> m && cat m > link.md
git config --global user.email "7sk8g739g@mozmail.com"
git config --global user.name "Amit"
git pull
git add link.md
git commit -m "link.md"
sudo apt install expect
sudo /usr/bin/expect <<EOF
spawn git push origin
sleep 1
send -- "7sk8g739g@mozmail.com\r"
sleep 1
send -- "7sk8g739g@mozmail.com\r"
expect eof
EOF
while :; do cat log.txt ; sleep 3 ; done 

#   docker run --net=host -d -e NGROK_AUTHTOKEN=291lhRXUGTs48sSBejg1nm4VNDi_2VwY5BCEpNLTdzFj2kV8b ngrok/ngrok tcp 3389

#
