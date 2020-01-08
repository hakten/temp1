resource "aws_instance" "backup" {
  instance_type               = var.instance_type
  ami                         = var.ami-amazon-linux-2[var.region]
  subnet_id                   = aws_subnet.priv-1.id
  key_name                    = aws_key_pair.deployer.key_name
  vpc_security_group_ids      = [aws_security_group.ssh.id]

  #user_data = file("./files/userdata-db")
  
  tags = {
    Name = "Backup"
  }
}