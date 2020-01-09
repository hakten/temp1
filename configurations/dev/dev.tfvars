region            = "us-east-1"

s3_bucket         = "terraform-huseyin-2019-dev"      #Will be used to set backend.tf 
s3_folder_project = "application"                             #Will be used to set backend.tf 
s3_folder_region  = "us-east-1"                      #Will be used to set backend.tf 
s3_folder_type    = "state"                        #Will be used to set backend.tf 
s3_tfstate_file   = "infrastructure.tfstate"          #Will be used to set backend.tf 


environment       = "dev"  
terraform         = "true"


name     = "wordpress"
cidr     = "10.0.0.0/16"

az          = ["us-east-1a","us-east-1b","us-east-1c"]
pub-cidr    = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
priv-cidr   = ["10.0.11.0/24","10.0.12.0/24","10.0.13.0/24"]
