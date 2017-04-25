#! /bin/bash

sudo apt-get update
sudo apt-get install -y nginx nginx-extras

nginx -v

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/cert.key -out /etc/nginx/cert.crt -subj "/C=US/ST=PA/L=ANY/O=ANY/OU=IT Department/CN=ssl.org"
#udo rm /etc/nginx/cert.key
#sudo rm /etc/nginx/cert.crt

#sudo cp ./cert.crt /etc/nginx/cert.crt
#sudo cp ./key.key /etc/nginx/cert.key

sudo rm /etc/nginx/sites-enabled/*
sudo cp ./portal.conf /etc/nginx/sites-available/portal
sudo ln -s /etc/nginx/sites-available/portal /etc/nginx/sites-enabled/portal

echo "####################################################"
echo "#  nginx status:"
sudo nginx -t
echo "# ----------------------------------------------------#"
echo "#  IP Addresses" 
ifconfig  | grep 'inet addr:'| grep -v '127.0.0.1' | cut -d: -f2 | awk '{ print $1}'
echo "#######################################################"

sleep 2
sudo rm /var/log/nginx/portal.log
sudo touch /var/log/nginx/portal.log
sudo chmod 777 /var/log/nginx/portal.log

sudo service nginx restart
#tail -f /var/log/nginx/portal.log
#tail -f /var/log/nginx/error.log