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

 
#specify cluster host
Read -p “enter cluster host:  “  chost
#specify your username
read -p "enter cluster username:  " cname  
#specify cluster password
read  -p "enter cluster password:   "  cpass
#specify cluster services  
read -p "enter cluster services. You can specify services such as Data or Index:  "  cservices
#specify  cluster ram size for your bucket
read -p "enter cluster ram size:  " cram

couchbase-cli cluster-init -c $chost  --cluster-username $cname  --cluster-password $cpass  --services $cservices  --cluster-ramsize  $cram



  

