resource "aws_route_table_association" "suuu_rtass_a" {
  subnet_id      = aws_subnet.suuu_puba.id
  route_table_id = aws_route_table.suuu_rt.id
}

resource "aws_route_table_association" "suuu_rtass_c" {
  subnet_id      = aws_subnet.suuu_pubc.id
  route_table_id = aws_route_table.suuu_rt.id
}