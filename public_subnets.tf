resource "aws_subnet" "public_subnet_1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.48.0/24"
  availability_zone = format("%sa", var.region)

  tags = {
    Name = format("%s-public-subnet-1a", var.project_name)
  }
}

resource "aws_subnet" "public_subnet_1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.49.0/24"
  availability_zone = format("%sb", var.region)

  tags = {
    Name = format("%s-public-subnet-1b", var.project_name)
  }
}

resource "aws_subnet" "public_subnet_1c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.50.0/24"
  availability_zone = format("%sc", var.region)

  tags = {
    Name = format("%s-public-subnet-1c", var.project_name)
  }
}
