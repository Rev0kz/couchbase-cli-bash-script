# couchbase-cli-bash-script
This project shows how to integrate couchbase-cli into a bash script to automate cluster initialization, create buckets and delete bucket in a coucuhbase cluster.


## How to run bash script:    

First you need to grant permissions to execute the file as the owner as shown below:  

`chmod 700  cluster.sh create-bucket.sh   delete-bucket.sh` 

Then run it as follows:  ###assuming you want to call the update function to update packages in the repository.

  `source . ./cluster.sh && update`   use this command to call the `update` function to update packages in a repository.  
  
  You execute other functions by using the above command and replacing it the `update ()`  function.
  
  
  

