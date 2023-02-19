resource "aws_eip" "nat_eip" {
  vpc = true
}
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.main.id
  tags = {
    Name = "gw NAT"
  }
}