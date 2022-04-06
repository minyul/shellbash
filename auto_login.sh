#!/bin/bash
 
 RED="\033[1;31m"
 RESET="\033[0m"
 
 function color_echo {
    # $RED + $1 + $RESET
    echo -e "$RED$1$RESET"
 }
 
 USER={ID}
 PASSWORD='{PWD}'
 HOST={HOST}
 PORT={PORT}
 
 function connect_server {
   color_echo "connect server"
   sshpass -p $PASSWORD ssh -t -p$PORT $USER@$HOST
 }
 
 connect_server
