region            = "us-east-2"

s3_bucket         = "terraform-huseyin-2019-qa"      #Will be used to set backend.tf 
s3_folder_project = "application"                             #Will be used to set backend.tf 
s3_folder_region  = "us-east-2"                      #Will be used to set backend.tf 
s3_folder_type    = "state"                        #Will be used to set backend.tf 
s3_tfstate_file   = "infrastructure.tfstate"          #Will be used to set backend.tf 


environment       = "qa"  
terraform         = "true"


name     = "wordpress"
cidr     = "10.20.0.0/16"

az          = ["us-east-2a","us-east-2b","us-east-2c"]
pub-cidr    = ["10.20.1.0/24","10.20.2.0/24","10.20.3.0/24"]
priv-cidr   = ["10.20.11.0/24","10.20.12.0/24","10.20.13.0/24"]
