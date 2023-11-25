#!/bin/bash
read -p "IP public server : " ipPublic
echo -e "[web-server]\n$ipPublic" > hosts.yml

read -p "input filename pair key : " fileNamePair

ansible-playbook -v playbook.yml -u ubuntu --private-key $fileNamePair -i hosts.yml
echo -e "finish!"

