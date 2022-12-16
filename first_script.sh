#!/bin/bash
touch linux.txt

echo Welcome to the linux wolrld > linux.txt

touch linux.txt

ls -l linux.txt

chmod 600 linux.txt

ls -l linux.txt

mv linux.txt linuxworld.txt

whoami

echo betaque@123 | sudo -S su

<< EOF
    apt-get install apache2 -y
    whoami
EOF

whoami

curl http://localhost/

sudo systemctl enable apache2

sudo systemctl is-active apache2
