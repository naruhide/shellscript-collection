#!/bin/bash

sudo yum check-update
sudo yum update -y
sudo yum install -y httpd httpd-tools mod_ssl
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
