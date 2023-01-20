output "Subnet" {
  value = aws_subnet.Public-Subnet.*.id
}

output "Subnet1" {
  value = aws_subnet.Public-Subnet.0.id
}
output "Subnet2" {
  value = aws_subnet.Public-Subnet.1.id
}