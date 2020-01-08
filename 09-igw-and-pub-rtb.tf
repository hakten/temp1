resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
}


resource "aws_route_table" "pub-rtb" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block  = "0.0.0.0/0"
    gateway_id  = aws_internet_gateway.igw.id
  }
    tags = {
    Name = "pub-rtb"
  }
}


resource "aws_route_table_association" "pub-1" {
  route_table_id = aws_route_table.pub-rtb.id
  subnet_id      = aws_subnet.pub-1.id
}
resource "aws_route_table_association" "pub-2" {
  route_table_id = aws_route_table.pub-rtb.id
  subnet_id      = aws_subnet.pub-2.id
}
resource "aws_route_table_association" "pub-3" {
  route_table_id = aws_route_table.pub-rtb.id
  subnet_id      = aws_subnet.pub-3.id
}
