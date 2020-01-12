output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "vpc_cidr" {
  value = "${aws_vpc.vpc.cidr_block}"
}

output "public_subnets" {
  value = "${aws_subnet.public_subnets[*].id}"
}

output "private_subnets" {
  value = "${aws_subnet.private_subnets[*].id}"
}

