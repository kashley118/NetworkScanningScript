#!/bin/bash

echo -n "Enter the IP Address for the host you want to scan: "
read ip
echo -e "\nRunning script for SSH \n"
nmap $ip -v -p 22 --script=ssh* -oN sshport22.txt

echo -e "\nRunning script for FTP \n"
nmap $ip -v -p 21 --script=ftp* -oN ftpport21.txt

echo -e "\nRunning TFTP Enum script\n"
nmap $ip -v -p 21 --script=tftp-enum.nse -oN tftpenum.txt

echo -e "\nRunning TFTP Version script\n"
nmap $ip -v -p 21 --script=tftp-version.nse -oN tftpversion.txt

echo -e "\nRunning script for HTTP \n"
nmap $ip -v -p 80 --script=http* -oN http80.txt

echo -e "\nRunning IP-HTTPS-DISCOVER script \n"
nmap $ip -v -p 80 --script=ip-https-discover.nse -oN http80IpDiscover.txt

echo -e "\nRunning MEMBASE-HTTP-INFO script \n"
nmap $ip -v -p 80 --script=membase-http-info.nse -oN http80membase.txt

echo -e "\nRunning RIAK-HTTP-INFO script \n"
nmap $ip -v -p 80 --script=riak-http-info.nse -oN http80riak.txt

echo -e "\nRunning script for HTTPS \n"
nmap $ip -v -p 443 --script=http* -oN https443.txt

echo -e "\nRunning IP-HTTPS-DISCOVER script \n"
nmap $ip -v -p 443 --script=ip-https-discover.nse -oN https443IpDiscover.txt

echo -e "\nRunning MEMBASE-HTTP-INFO script \n"
nmap $ip -v -p 443--script=membase-http-info.nse -oN https443membase.txt

echo -e "\nRunning RIAK-HTTP-INFO script \n"
nmap $ip -v -p 443 --script=riak-http-info.nse -oN https443riak.txt



