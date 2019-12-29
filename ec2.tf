resource "aws_instance" "web" {
  ami           = "ami-0b2d8d1abb76a53d8"
  instance_type = "t2.micro"
  vpc_id        = aws_vpc.main.id
  security_groups = ["ssh"]
}