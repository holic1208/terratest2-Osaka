resource "aws_route_table" "suuu_rt" {
    vpc_id = aws_vpc.suuu_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.suuu_ig.id
    }
    
    tags = {
        "Name" = "suuu-rt"
    }
}