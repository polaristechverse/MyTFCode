resource "aws_vpc" "testvpc" {
  cidr_block = "10.100.0.0/16"
  enable_dns_hostnames = true
  tags = {
    "key" = "SL-vpc"
  }
}