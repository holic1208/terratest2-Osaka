resource "aws_lb" "suuu_alb" {
  name               = "suuu-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.suuu_sg.id]
  subnets            = [aws_subnet.suuu_puba.id, aws_subnet.suuu_pubc.id]
}

output "alb_dns" {
  value = aws_lb.suuu_alb.dns_name
}