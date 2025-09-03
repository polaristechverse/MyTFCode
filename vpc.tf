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
    "Name" = "SL-IGW"
  }
}
resource "aws_subnet" "testsubnet1" {
  vpc_id                  = aws_vpc.testvpc.id
  cidr_block              = "10.100.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "sl-subnet-1"
  }
}
resource "aws_subnet" "testsubnet2" {
  vpc_id                  = aws_vpc.testvpc.id
  cidr_block              = "10.100.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "sl-subnet-2"
  }
}

resource "aws_subnet" "testsubnet3" {
  vpc_id                  = aws_vpc.testvpc.id
  cidr_block              = "10.100.3.0/24"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "sl-subnet-3"
  }
}
