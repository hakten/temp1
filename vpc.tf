provider "aws" {
  alias = "veer"
  region = "us-east-1"
}

resource "aws_vpc" "foo" {
  provider = "aws.veer"
  cidr_block = "10.1.0.0/16"
}

provider "aws" {
  alias = "peer"
  region = "us-east-2"
}

resource "aws_vpc" "bar" {
  provider = "aws.peer"
  cidr_block = "10.2.0.0/16"
}


