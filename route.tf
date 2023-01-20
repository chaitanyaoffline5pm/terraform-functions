resource "aws_route_table" "Awsb6-Route" {
  vpc_id = aws_vpc.AwsB6-Function-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Awsb6-IGW.id
  }
  tags = {
    Name = "${var.vpc_name}-PublicRoute"
  }
}
resource "aws_route_table_association" "Awsb6-Public-association" {
  count          = length(var.Public_Subnet_Cidr)
  subnet_id      = element(aws_subnet.Public-Subnet.*.id, count.index)
  route_table_id = aws_route_table.Awsb6-Route.id
}

