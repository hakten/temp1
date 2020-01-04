variable "region" {
  default = "us-east-2"
}

variable "vpc-cidr-block" {
  default = "192.168.0.0/16"
}

variable "vpc-name" {
  default = "Terraform-VPC"
}

variable "pub-cidr" {
  default = ["192.168.1.0/24","192.168.2.0/24","192.168.3.0/24"]
}

variable "priv-cidr" {
  default = ["192.168.11.0/24","192.168.12.0/24","192.168.13.0/24"]
}

variable "az" {
  default = ["us-east-2a","us-east-2b","us-east-2c"]
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami-amazon-linux-2" {
  default = {
    "us-east-1" = "ami-00068cd7555f543d5"
    "us-east-2" = "ami-0dacb0c129b49f529"
  }
}

variable "ami-centos-7" {
  default = {
    "us-east-1" = "ami-02eac2c0129f6376b"
    "us-east-2" = "ami-0f2b4fc905b0bd1f1"
    "us-west-1" = "ami-074e2d6769f445be5"
  }
}