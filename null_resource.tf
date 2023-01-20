resource "null_resource" "Public-Web-Server" {
  depends_on = [
    aws_volume_attachment.ebs_att
  ]
  count = length(var.Public_Subnet_Cidr)
  provisioner "file" {
    source      = "script.sh"
    destination = "/tmp/script.sh"
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("AWS.pem")
      host        = element(aws_instance.Public-Web-Server.*.public_ip, count.index)
    }
  }
  provisioner "remote-exec" {
    inline = [
      "chmod 777 /tmp/script.sh",
      "sudo bash /tmp/script.sh",

    ]
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("AWS.pem")
      host        = element(aws_instance.Public-Web-Server.*.public_ip, count.index)
    }
  }
}