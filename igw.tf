resource "aws_internet_gateway" "vpc-3-igw" {
  vpc_id = aws_vpc.vpc-3.id

  tags = {
    Name     = "vpc-3-igw"
    scenario = "${var.scenario}"
  }
}