# 10.0.0.0/16 인터넷 게이트웨이!
resource "aws_internet_gateway" "suuu_ig" {
    vpc_id = aws_vpc.suuu_vpc.id

    tags = {
        "Name" = "suuu-ig"
    }
}