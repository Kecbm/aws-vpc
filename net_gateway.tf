resource "aws_eip" "vpc_eip_1a" {
  domain = "vpc"
  tags = {
    Name = format("%s-eip-1a", var.project_name)
  }
}

resource "aws_nat_gateway" "nat_1a" {
  allocation_id = aws_eip.vpc_eip_1a.id
  subnet_id     = aws_subnet.public_subnet_1a.id
  tags = {
    Name = format("%s-nat-1a", var.project_name)
  }
}