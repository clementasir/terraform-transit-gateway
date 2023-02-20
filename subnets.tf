
resource "aws_subnet" "vpc-1-sub-a" {
  vpc_id            = aws_vpc.vpc-1.id
  cidr_block        = "10.10.1.0/24"
  availability_zone = var.az1

  tags = {
    Name = "${aws_vpc.vpc-1.tags.Name}-sub-a"
  }
}

resource "aws_subnet" "vpc-1-sub-b" {
  vpc_id            = aws_vpc.vpc-1.id
  cidr_block        = "10.10.2.0/24"
  availability_zone = var.az2

  tags = {
    Name = "${aws_vpc.vpc-1.tags.Name}-sub-b"
  }
}

resource "aws_subnet" "vpc-2-sub-a" {
  vpc_id            = aws_vpc.vpc-2.id
  cidr_block        = "10.11.1.0/24"
  availability_zone = var.az1

  tags = {
    Name = "${aws_vpc.vpc-2.tags.Name}-sub-a"
  }
}

resource "aws_subnet" "vpc-2-sub-b" {
  vpc_id            = aws_vpc.vpc-2.id
  cidr_block        = "10.11.2.0/24"
  availability_zone = var.az2

  tags = {
    Name = "${aws_vpc.vpc-2.tags.Name}-sub-b"
  }
}

resource "aws_subnet" "vpc-3-sub-a" {
  vpc_id            = aws_vpc.vpc-3.id
  cidr_block        = "10.12.1.0/24"
  availability_zone = var.az1

  tags = {
    Name = "${aws_vpc.vpc-3.tags.Name}-sub-a"
  }
}

resource "aws_subnet" "vpc-3-sub-b" {
  vpc_id            = aws_vpc.vpc-3.id
  cidr_block        = "10.12.2.0/24"
  availability_zone = var.az2

  tags = {
    Name = "${aws_vpc.vpc-3.tags.Name}-sub-b"
  }
}

resource "aws_subnet" "vpc-4-sub-a" {
  vpc_id            = aws_vpc.vpc-4.id
  cidr_block        = "10.13.1.0/24"
  availability_zone = var.az1

  tags = {
    Name = "${aws_vpc.vpc-4.tags.Name}-sub-a"
  }
}

resource "aws_subnet" "vpc-4-sub-b" {
  vpc_id            = aws_vpc.vpc-4.id
  cidr_block        = "10.13.2.0/24"
  availability_zone = var.az2

  tags = {
    Name = "${aws_vpc.vpc-4.tags.Name}-sub-b"
  }
}