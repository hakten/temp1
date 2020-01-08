resource "aws_subnet" "pub-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.pub-cidr[0]
  map_public_ip_on_launch = true
  availability_zone = var.az[0]
  tags = {
    Name = "pub-1"
  }
}

resource "aws_subnet" "pub-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.pub-cidr[1]
  map_public_ip_on_launch = true
  availability_zone = var.az[1]
  tags = {
    Name = "pub-2"
  }
}

resource "aws_subnet" "pub-3" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.pub-cidr[2]
  map_public_ip_on_launch = true
  availability_zone = var.az[2]
  tags = {
    Name = "pub-3"
  }
}