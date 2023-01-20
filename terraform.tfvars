region             = "us-east-1"
vpc_cidr           = "172.29.0.0/16"
vpc_name           = "DevOpsB6"
Public_Subnet_Cidr = ["172.29.1.0/24", "172.29.2.0/24", "172.29.3.0/24"]
az                 = ["us-east-1a", "us-east-1b", "us-east-1c"]
ami = {
  us-east-1  = "ami-0778521d914d23bc1"
  us-east-2  = "ami-00149760ce42c967b"
  ap-south-1 = "ami-0ef5a37e767842839"
}
key = {
  us-east-1  = "AWSB1ONLINE-KEY"
  us-east-2  = "AWSB10NLINE-OHIO"
  ap-south-1 = "AWSB1ONLINE-MUMBAI"
}
                