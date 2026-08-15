#!/bin/bash

echo "\n Enter an IP Address \n\n"
read ip
echo -e "\n Starting DNS Record lookup with Dig \n\n"
dig -x $ip
echo -e "\n End of DNS lookup \n\n"

echo -e "\n Start of DNS Script \n\n"
nmap $ip -v -p 53 --script=dns*
echo -e "\n DNS record scan completed \n"

echo -e "\n Starting NSLOOKUP \n\n"
nslookup

echo -e "\n End of Nslookup"

