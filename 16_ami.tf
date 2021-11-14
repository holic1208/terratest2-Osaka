resource "aws_ami_from_instance" "suuu_ami" {
  name               = "suuu-ami"
  source_instance_id = aws_instance.suuu_weba.id

  depends_on = [
    aws_instance.suuu_weba
  ]

  tags = {
    "Name" = "suuu-ami"
  }
}