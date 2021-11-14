resource "aws_instance" "suuu_weba" {
  ami                    = "ami-0d9649ef6deb663a7"
  instance_type          = "t2.micro"
  key_name               = "suuu-key"
  availability_zone      = "ap-northeast-3a"
  subnet_id              = aws_subnet.suuu_puba.id
  vpc_security_group_ids = [aws_security_group.suuu_sg.id]
  user_data              = file("./install.sh")
   tags = {
    "Name" = "suuu_weba"
  }
}

resource "aws_eip" "suuu_weba_ip" {
    vpc = true
    instance = aws_instance.suuu_weba.id
    depends_on = [
      aws_internet_gateway.suuu_ig
    ]
}

output "public_ip" {
  value = aws_instance.suuu_weba.public_ip
}