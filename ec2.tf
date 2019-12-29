resource "aws_instance" "web" {
  ami           = "ami-074e2d6769f445be5"
  instance_type = "t2.micro"
  key_name = aws_key_pair.deployer.key_name
  subnet_id     = aws_subnet.main.id
  associate_public_ip_address = "true"
  vpc_security_group_ids = [aws_security_group.ssh.id]
  user_data = file("userdata-web")

}
