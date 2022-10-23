
resource "aws_route_table" "public_tb" {
  vpc_id = aws_vpc.myvpc.id

}

#route

resource "aws_route" "public_route" {
  route_table_id            = aws_route_table.public_tb.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.mygw.id

}



resource "aws_route_table_association" "pub1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.public_tb.id
}

resource "aws_route_table_association" "pub2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.public_tb.id
}


#privat

resource "aws_route_table" "private_tb" {
  vpc_id = aws_vpc.myvpc.id
}
 
 resource "aws_route" "private_route"  {
  route_table_id            = aws_route_table.private_tb.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_nat_gateway.nat.id

  }


  resource "aws_route_table_association" "prv1" {
  subnet_id      = aws_subnet.privat1.id
  route_table_id = aws_route_table.private_tb.id
}

resource "aws_route_table_association" "prv2" {
  subnet_id      = aws_subnet.privat2.id
  route_table_id = aws_route_table.private_tb.id
}
