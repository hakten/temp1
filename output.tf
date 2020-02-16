output "server-ip" {
  value = aws_instance.tomcat.public_ip
}
