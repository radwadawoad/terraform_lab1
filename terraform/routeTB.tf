
resource "aws_route_table" "public_table" {
  vpc_id = aws_vpc.main.id

  route = []

  
}


resource "aws_route_table" "privat_table" {
  vpc_id = aws_vpc.main.id

  route = []

  
}


resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.public_table.id
}

esource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.privat1.id
  route_table_id = aws_route_table.privat_table.id
}