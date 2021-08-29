#!/bin/bash

echo -e "\n$(date "+%d-%m-%Y --- %T") --- Starting work\n"

sudo apt-get update
sudo apt-get -y upgrade

sudo apt-get -y autoremove
sudo apt-get autoclean

echo -e "\n$(date "+%T") \t Script Terminated"
