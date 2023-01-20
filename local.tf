locals {
  ingress_rules1 = [
    {
      port        = 22
      description = "Ingress for SSH"
    },
    {
      port        = 80
      description = "Ingress for HTTP"
    },
    {
      port        = 443
      description = "Ingress for HTTPS"
    },
    {
      port        = 3389
      description = "Ingress for RDP"
    }
  ]

  ingress_rules2 = [
    {
      port        = 8080
      description = "Ingress for Jenkins"
    },
    {
      port        = 3306
      description = "Ingress for SQL"
    }
  ]
}