# ap-northeast3 오사카는 가용영역 3개뿐입니당

# 가용영역 a의 Pub Subnet
resource "aws_subnet" "suuu_puba" {
  vpc_id            = aws_vpc.suuu_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-3a"
  tags = {
    "Name" = "suuu-puba"
  }
}

# 가용영역 b의 Pri Subnet
resource "aws_subnet" "suuu_prib" {
  vpc_id            = aws_vpc.suuu_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-3b"
  tags = {
    "Name" = "suuu-prib"
  }
}

# 가용영역 c의 Pub Subnet
resource "aws_subnet" "suuu_pubc" {
  vpc_id            = aws_vpc.suuu_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-3c"
  tags = {
    "Name" = "suuu-pubc"
  }
}

# 가용영역 a의 DB Subnet
resource "aws_subnet" "suuu_pria_db" {
  vpc_id            = aws_vpc.suuu_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-3a"
  tags = {
    "Name" = "suuu-prib-db"
  }
}

# 가용영역 c의 DB Subnet
resource "aws_subnet" "suuu_pric_db" {
  vpc_id            = aws_vpc.suuu_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-3c"
  tags = {
    "Name" = "suuu-pric-db"
  }
}