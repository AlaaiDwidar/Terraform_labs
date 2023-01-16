resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.lab1.id

  tags = {
    Name = "igw"
  }
}