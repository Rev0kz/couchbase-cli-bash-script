#!/bin/bash
#author: Michael Aboagye
#purpose: create a bucket inside a couchbase cluster
#date: 9/9/19

#!/bin/bash

     

banner()

{
  echo "+------------------------------------------+"
  printf "| %-40s |\n" "`date`"
  echo "|                                          |"
  printf "|`tput bold` %-40s `tput sgr0`|\n" "$@"
  echo "+------------------------------------------+"
}

banner "updating packages in repository"  

apt-get  update

 
#specify your host name
read -p "enter host name: " host
#specify your username
read -p "enter username:  " name  
#specify username password
read  -p "username password:   "  password
#specify bucket name  
read -p "enter bucket: "  bucket
#specify bucket type
read -p "enter bucket type:  "  btype
#specify ram size for your bucket
read -p "enter bucket ram size. Default size is 1024:  "  ram

couchbase-cli bucket-create -c $host --username $name  --password $password --bucket $bucket --bucket-type $btype  --bucket-size  $ram
