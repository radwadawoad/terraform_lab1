resource "aws_nat_gateway" "nat" {
  subnet_id     = aws_subnet.public1.id

  tags = {
    Name = "gw NAT"
  }