resource "aws_vpc" "my-vpc" {
  cidr_block           = var.my_cidr_block[0]
  enable_dns_hostnames = "true"
  tags = {
    Name = "test_vpc"
  }
}