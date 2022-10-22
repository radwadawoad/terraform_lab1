resource "aws_subnet" "privat1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.3/24"

  
}


resource "aws_subnet" "privat2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.4/24"

  
}