resource "aws_subnet" "Public-Subnet" {
  count                   = length(var.Public_Subnet_Cidr)
  vpc_id                  = aws_vpc.AwsB6-Function-vpc.id
  cidr_block              = element(var.Public_Subnet_Cidr, count.index)
  availability_zone       = element(var.az, count.index)
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_name}-PublicSubnet-${count.index + 1}"
  }
}
