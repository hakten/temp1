module "vpc_example_simple-vpc" {
  source  = "terraform-aws-modules/vpc/aws//examples/simple-vpc"
  version = "2.21.0"
}

provider "aws" {
  region = "us-west-1"
}
