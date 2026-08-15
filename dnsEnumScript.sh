#!/bin/bash

echo -e "\n Starting DNS Record lookup with Dig \n\n"
dig -x 192.168.64.7
echo -e "\n End of DNS lookup \n\n"

echo -e "\n Start of DNS Script \n\n"
nmap 192.168.64.7 -v -p 53 --script=dns*
echo -e "\n DNS record scan completed \n"

echo -e "\n Starting NSLOOKUP \n\n"
nslookup

echo -e "\n End of Nslookup"

