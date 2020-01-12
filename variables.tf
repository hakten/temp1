variable "cidr" {}
variable "name" {}
variable "environment" {}

variable "azs" {}
variable "public_subnets" {
    type = list
}
variable "private_subnets" {
    type = list
}



