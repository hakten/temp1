resource "aws_security_group" "ssh" { 
  name        = "ssh" 
  description = "Allow SSH inbound traffic" 
  vpc_id      = aws_vpc.vpc.id

  ingress { 
    from_port   = 22 
    to_port     = 22 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   

} 
  egress { 
    from_port       = 0 
    to_port         = 0 
    protocol        = "-1" 
    cidr_blocks     = ["0.0.0.0/0"] 
  } 
} 

resource "aws_security_group" "web" { 
  name        = "web" 
  description = "Allow web inbound traffic" 
  vpc_id      = aws_vpc.vpc.id

  ingress { 
    from_port   = 80
    to_port     = 80 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   
} 
ingress { 
    from_port   = 443
    to_port     = 443
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   
} 
  egress { 
    from_port       = 0 
    to_port         = 0 
    protocol        = "-1" 
    cidr_blocks     = ["0.0.0.0/0"] 
  } 
}

resource "aws_security_group" "db" { 
  name        = "db" 
  description = "Allow database inbound traffic" 
  vpc_id      = aws_vpc.vpc.id

  ingress { 
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   
} 
  egress { 
    from_port       = 0 
    to_port         = 0 
    protocol        = "-1" 
    cidr_blocks     = ["0.0.0.0/0"] 
  } 
}