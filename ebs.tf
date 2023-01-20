resource "aws_ebs_volume" "Awsb6-vol" {
  count             = length(var.Public_Subnet_Cidr)
  availability_zone = element(var.az, count.index)
  size              = 2
  tags = {
    Name = "vol-terraform-1"
  }
}
resource "aws_volume_attachment" "ebs_att" {
  count       = length(var.Public_Subnet_Cidr)
  device_name = "/dev/sdh"
  volume_id   = element(aws_ebs_volume.Awsb6-vol.*.id, count.index)
  instance_id = element(aws_instance.Public-Web-Server.*.id, count.index)
}