#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
git clone https://$TOKEN@<YOUR PRIVATE GITHUB REPO URL>
cd /home/ubuntu/<YOUR PRIVATE GITHUB REPO NAME>
apt install python3-pip -y
apt-get install python3.7-dev default-libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/<YOUR PRIVATE GITHUB REPO NAME>/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80