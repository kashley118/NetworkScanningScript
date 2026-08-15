#!/bin/bash

echo -e "\n Enter an IP Address: \n"
read ip

echo -e "\n Enter range of ports: \n"
read port

echo -e "\n\n Starting Netcat Scan \n"
nc -zv $ip $port

echo -e "\n Netcat scan complete \n"
