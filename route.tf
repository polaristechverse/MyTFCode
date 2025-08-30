resource "aws_route_table" "testroute" {
  vpc_id = aws_vpc.testvpc.id
  tags = {
    "Name"="SL-route"
  }
  route  {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.testigw.id
  }
}

resource "aws_route_table" "testroutepvt" {
  vpc_id = aws_vpc.testvpc.id
  tags = {
    "Name"="SL-Route-Private"
  }
}