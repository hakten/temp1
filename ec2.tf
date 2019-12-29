resource "aws_instance" "web" {
  ami           = "ami-0b2d8d1abb76a53d8"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  security_groups = ["ssh"]
}