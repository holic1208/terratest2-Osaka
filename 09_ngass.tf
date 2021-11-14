resource "aws_route_table_association" "suuu_ngass_a" {
  subnet_id      = aws_subnet.suuu_prib.id
  route_table_id = aws_route_table.suuu_ngrt.id
}