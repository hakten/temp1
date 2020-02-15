# Below code is used to set backend only
s3_folder_region                =	    "eu-west-1"
s3_bucket                       =	    "t-s3-backend"
s3_folder_project               =   	"jenkins"
s3_folder_type                  =   	"tools"
s3_tfstate_file                 =   	"jenkins.tfstate"




region 			                = 	"eu-west-1"
vpc_id		    	            =	"vpc-2f332c49"
zone_id			                =	"Z32OHGRMBVZ9LR" 
domain			                =	"acirrustech.com"
base_domain			            =	"acirrustech.com"

environment                     =   "tools"

instance_type		            =  	"t2.medium"
key_name	    	            =   "jenkins"
user		    	            =   "centos"
ssh_key_location	            =   "/root/.ssh/id_rsa"                                                  



