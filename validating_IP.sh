#!bin/bash


read -p "Enter your IP address" ip
function check_ip(){
if [ $ip =~ ^[0-9]{1-3} +\.[0-9]{1-3}+\.[0-9] +\.[0-9]{1-3}] 
        #OIFS=$IFS
        IFS='.'
        ip=($ip)
        #IFS=$OIFS
     if [[ ${ip[0]} -le 255 && ${ip[1]} -le 255 \ && ${ip[2]} -le 255 && ${ip[3]} -le 255 ]] then
         echo "Success"
  
else 
  echo "Fail"
 fi
}
