resource "aws_vpc" "foo" {
  provider "aws" {
  region = "us-east-1"
}
  cidr_block = "10.1.0.0/16"
}

resource "aws_vpc" "bar" {
  provider "aws" {
  region = "us-east-1"
}
  cidr_block = "10.2.0.0/16"
}


