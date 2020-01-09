region            = "us-west-2"

s3_bucket         = "terraform-huseyin-2019-stage"      #Will be used to set backend.tf 
s3_folder_project = "application"                             #Will be used to set backend.tf 
s3_folder_region  = "us-west-2"                      #Will be used to set backend.tf 
s3_folder_type    = "state"                        #Will be used to set backend.tf 
s3_tfstate_file   = "infrastructure.tfstate"          #Will be used to set backend.tf 


environment       = "stage"  
terraform         = "true"


name     = "wordpress"
cidr     = "10.30.0.0/16"

az          = ["us-west-2a","us-west-2b","us-west-2c"]
pub-cidr    = ["10.30.1.0/24","10.30.2.0/24","10.30.3.0/24"]
priv-cidr   = ["10.30.11.0/24","10.30.12.0/24","10.30.13.0/24"]
