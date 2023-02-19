resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.my_cidr_block[2]
  availability_zone = var.pub_zone_name[1]
  tags = {
    Name = "private-sub"
  }
}