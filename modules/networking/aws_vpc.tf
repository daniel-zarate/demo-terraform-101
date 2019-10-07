resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
}

resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.main.id}"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "main" {
  vpc_id                  = "${aws_vpc.main.id}"
  cidr_block              = "10.0.0.0/20"
  map_public_ip_on_launch = true

  tags = {
    Name = "Main"
  }
}

data "aws_route_tables" "rts" {
  vpc_id = "${aws_vpc.main.id}"
}

resource "aws_route" "r" {
  route_table_id         = join("", data.aws_route_tables.rts.ids)
destination_cidr_block = "0.0.0.0/0"
gateway_id             = "${aws_internet_gateway.gw.id}"
}

resource "aws_security_group" "workshop" {
name        = "workshop"
description = "Allow inbound traffic"
vpc_id      = "${aws_vpc.main.id}"

ingress {
from_port   = 22
to_port     = 22
protocol    = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

ingress {
from_port   = 80
to_port     = 80
protocol    = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

ingress {
from_port   = 443
to_port     = 443
protocol    = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

egress {
from_port   = 0
to_port     = 0
protocol    = "-1"
cidr_blocks = ["0.0.0.0/0"]
}

}

output "vpc_security_group_id" {
value = "${aws_security_group.workshop.id}"
}

output "subnet_id" {
value = "${aws_subnet.main.id}"
}