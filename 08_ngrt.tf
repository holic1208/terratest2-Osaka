resource "aws_route_table" "suuu_ngrt" {
  vpc_id = aws_vpc.suuu_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.suuu_ng.id
  }

  tags = {
    "Name" = "suuu-ngrt"
  }
}