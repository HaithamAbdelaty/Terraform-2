resource "aws_route_table" "route" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = var.my_cidr_block[3]
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "table"
  }
}
resource "aws_route_table_association" "public-rta" {
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.route.id
}