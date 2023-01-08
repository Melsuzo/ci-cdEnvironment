#!/bin/bash


sudo yum update

# install python and pip
sudo yum install python3 -y
sudo yum install python-pip -y

# install flask
pip install flask

# start application
echo "Starting Flask Application ..."

nohup python /home/ec2-user/demoapp/app.py &

# Check if port 80 is listening
netstat -nltp | grep 80

# Confirm App is running
ps -ef | grep python
