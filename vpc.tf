resource "aws_vpc" "AwsB6-Function-vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    "Name" = var.vpc_name
    "Env"  = "Dev"
  }
}
resource "aws_internet_gateway" "Awsb6-IGW" {
  vpc_id = aws_vpc.AwsB6-Function-vpc.id
  tags = {
    "Name" = "${var.vpc_name}-IGw"
  }
}
