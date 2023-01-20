resource "aws_security_group" "AwsB6_Sg" {
  name   = "${var.vpc_name}-Sg"
  vpc_id = aws_vpc.AwsB6-Function-vpc.id
  dynamic "ingress" {
    for_each = local.ingress_rules1
    content {
      description = ingress.value.description
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    }
  }
  dynamic "ingress" {
    for_each = local.ingress_rules2
    content {
      description = ingress.value.description
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}