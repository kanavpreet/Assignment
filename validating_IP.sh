#!bin/bash

##Testing IP Validation 

if [ $ip =~ ^[0-9] +\.[0-9]+\.[0-9] +\.[0-9]]; then
  echo "Success"
else 
  echo "Fail"
 
