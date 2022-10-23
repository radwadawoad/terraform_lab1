resource "aws_subnet" "privat1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.3.0/24"
map_public_ip_on_launch= "true"
  
  }




resource "aws_subnet" "privat2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.4.0/24"
map_public_ip_on_launch= "true"
  
  }
