#!/bin/bash

echo -e "\n Enter a file name \n"
read filename

echo -e "\n Generating SHA-128 hash value for the file name entered \n"
sha1sum $filename
echo -e "\n SHA-128 hash value generation complete \n\n"

echo -e "\n Generating SHA-256 hash value for the filename entered \n"
sha256sum $filename
echo -e "\n SHA-256 hash value generation complete \n\n"

echo -e "\n Generating MD5 hash value for the filename entered \n"
md5sum $filename
echo -e "\n MD5 hash value generation complete \n\n"

