resource "aws_placement_group" "suuu_place" {
  name     = "suuu-place"
  strategy = "cluster"
}