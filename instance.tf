## Fetching AMI info
data "aws_ami" "amazon-linux-2" {
  most_recent = true


  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }


  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}


resource "aws_instance" "test-tgw-instance1-dev" {
  ami                    = data.aws_ami.amazon-linux-2.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.vpc-1-sub-a.id
  vpc_security_group_ids = ["${aws_security_group.sec-group-vpc-1-ssh-icmp.id}"]
  key_name               = var.key_name
  private_ip             = "10.10.1.10"

  tags = {
    Name     = "test-tgw-instance1-dev"
    scenario = "${var.scenario}"
    env      = "dev"
    az       = "${var.az1}"
    vpc      = "1"
  }
}

resource "aws_instance" "test-tgw-instance2-dev" {
  ami                    = data.aws_ami.amazon-linux-2.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.vpc-2-sub-a.id
  vpc_security_group_ids = ["${aws_security_group.sec-group-vpc-2-ssh-icmp.id}"]
  key_name               = var.key_name
  private_ip             = "10.11.1.10"

  tags = {
    Name     = "test-tgw-instance2-dev"
    scenario = "${var.scenario}"
    env      = "dev"
    az       = "${var.az1}"
    vpc      = "2"
  }
}

resource "aws_instance" "test-tgw-instance3-shared" {
  ami                         = data.aws_ami.amazon-linux-2.id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.vpc-3-sub-a.id
  vpc_security_group_ids      = ["${aws_security_group.sec-group-vpc-3-ssh-icmp.id}"]
  key_name                    = var.key_name
  private_ip                  = "10.12.1.10"
  associate_public_ip_address = true

  tags = {
    Name     = "test-tgw-instance3-shared"
    scenario = "${var.scenario}"
    env      = "shared"
    az       = "${var.az1}"
    vpc      = "3"
  }
}

resource "aws_instance" "test-tgw-instance4-prod" {
  ami                    = data.aws_ami.amazon-linux-2.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.vpc-4-sub-a.id
  vpc_security_group_ids = ["${aws_security_group.sec-group-vpc-4-ssh-icmp.id}"]
  key_name               = var.key_name
  private_ip             = "10.13.1.10"

  tags = {
    Name     = "test-tgw-instance4-prod"
    scenario = "${var.scenario}"
    env      = "prod"
    az       = "${var.az1}"
    vpc      = "4"
  }
}
