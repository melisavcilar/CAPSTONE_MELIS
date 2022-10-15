#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKEN@github.com/melisavcilar/CAPSTONE_MELIS.git
cd /home/ubuntu/CAPSTONE_MELIS
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/CAPSTONE_MELIS/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80
