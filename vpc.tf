resource "aws_vpc" "testvpc" {
  cidr_block           = "10.100.0.0/16"
  enable_dns_hostnames = true
  tags = {
    "Name" = "SL-vpc"
  }
}

resource "aws_internet_gateway" "testigw" {
  vpc_id = aws_vpc.testvpc.id
  tags = {
    "Name"="SL-IGW"
  }
}