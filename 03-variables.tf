variable "region" {
  default = "us-east-1"
}

variable "vpc-cidr-block" {
  default = "10.0.0.0/16"
}

variable "vpc-name" {
  default = "TerraformVPC"
}

variable "pub-cidr" {
  default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
}

variable "priv-cidr" {
  default = ["10.0.11.0/24","10.0.12.0/24","10.0.13.0/24"]
}

variable "az" {
  default = ["us-east-1a","us-east-1b","us-east-1c"]
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami-amazon-linux-2" {
  default = {
    "us-east-1" = "ami-00068cd7555f543d5"
    "us-east-2" = "ami-0dacb0c129b49f529"
    "us-west-1" = "ami-0b2d8d1abb76a53d8"
  }
}

variable "ami-centos-7" {
  default = {
    "us-east-1" = "ami-02eac2c0129f6376b"
    "us-east-2" = "ami-0f2b4fc905b0bd1f1"
    "us-west-1" = "ami-074e2d6769f445be5"
  }
}