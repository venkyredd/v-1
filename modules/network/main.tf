resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
  tags = { Name = "${var.aws_region}-vpc" }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.this.id
}

resource "aws_subnet" "public" {
  for_each            = toset(var.public_subnets)
  vpc_id              = aws_vpc.this.id
  cidr_block          = each.value
  availability_zone   = element(data.aws_availability_zones.available.names, index(var.public_subnets, each.value))
  map_public_ip_on_launch = true
  tags = { Name = "${each.value}-public-subnet" }
}

data "aws_availability_zones" "available" {}
