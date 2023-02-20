
resource "aws_vpc" "vpc-1" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name     = "${var.scenario}-vpc1-dev"
    scenario = "${var.scenario}"
    env      = "dev"
  }
}

resource "aws_vpc" "vpc-2" {
  cidr_block = "10.11.0.0/16"
  tags = {
    Name     = "${var.scenario}-vpc2-dev"
    scenario = "${var.scenario}"
    env      = "dev"
  }
}

resource "aws_vpc" "vpc-3" {
  cidr_block = "10.12.0.0/16"
  tags = {
    Name     = "${var.scenario}-vpc3-shared"
    scenario = "${var.scenario}"
    env      = "shared"
  }
}

resource "aws_vpc" "vpc-4" {
  cidr_block = "10.13.0.0/16"
  tags = {
    Name     = "${var.scenario}-vpc4-prod"
    scenario = "${var.scenario}"
    env      = "prod"
  }
}