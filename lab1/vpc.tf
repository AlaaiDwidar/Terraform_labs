resource "aws_vpc" "lab1" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "terraform-lab1"
  }
}
resource "aws_subnet" "public-subnet" {
  vpc_id     = aws_vpc.lab1.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "public-subnet"
  }

}


