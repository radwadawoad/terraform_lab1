resource "aws_route" "r1" {
  route_table_id              = aws_route_table.public_table.id
}


resource "aws_route" "r2" {
  route_table_id              = aws_route_table.privat_table.id
}