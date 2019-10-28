#!/bin/bash 

#author: Michael Aboagye
#date: 
#purpose:  script to update packages before you initialize and  create a cluster in couchbase
#
#


#global declarations 

declare -rx SCRIPT=${0##*/}   # SCRIPT is the name of this script

declare -rx apt="/etc/apt"

declare -rx couchbase="/opt/couchbase/bin/couchbase-cli"


#sanity check for internal or in-built commands
#checks whether a bash shell is available or installed

if test -z "$BASH" ; then
  printf "$SCRIPT:LINENO: please use Bash shell to execute tasks"  
fi   

if  test  -z  "$apt" ; then 
  printf "$SCIRPT:LINENO: please the apt command is not available"  
fi   

if test -z "$couchbase" ; then 
   printf "$SCRIPT:LINENO: please the command couchbase-cli is not available"  
fi  

# The command below disallows the use of  undefined variables in the script   

shopt  -s   -o    nounset


banner()

{
  echo "+------------------------------------------+"
  printf "| %-40s |\n" "`date`"
  echo "|                                          |"
  printf "|`tput bold` %-40s `tput sgr0`|\n" "$@"
  echo "+------------------------------------------+"
}

banner "updating packages in repository"

update ()    #updating packages in repo with sudo command 

{


 sudo apt-get update

}

