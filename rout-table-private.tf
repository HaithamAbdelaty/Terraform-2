resource "aws_route_table" "route-1" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block     = var.my_cidr_block[3]
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "pr-table"
  }
}
resource "aws_route_table_association" "private-rta" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.route-1.id
}