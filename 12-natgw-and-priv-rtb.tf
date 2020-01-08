resource "aws_eip" "eip" {
  vpc      = true
}

resource "aws_nat_gateway" "nat" {
  subnet_id     = aws_subnet.pub-1.id
  allocation_id = aws_eip.eip.id
}

resource "aws_route_table" "priv-rtb" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }
    tags = {
    Name = "priv-rtb"
  }
}

resource "aws_route_table_association" "priv-1" {
  route_table_id = aws_route_table.priv-rtb.id
  subnet_id      = aws_subnet.priv-1.id
}
resource "aws_route_table_association" "priv-2" {
  route_table_id = aws_route_table.priv-rtb.id
  subnet_id      = aws_subnet.priv-2.id
}
resource "aws_route_table_association" "priv-3" {
  route_table_id = aws_route_table.priv-rtb.id
  subnet_id      = aws_subnet.priv-3.id
}
