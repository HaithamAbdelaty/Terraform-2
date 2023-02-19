resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.my_cidr_block[1]
  availability_zone = var.pub_zone_name[0]
  tags = {
    Name = "public-sub"
  }
}