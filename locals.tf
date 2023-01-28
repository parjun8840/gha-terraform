locals{
  ingress-yaml = templatefile("${path.module}/ingress.tpl", {"public_subnet_0" = var.public_subnet[0], "public_subnet_1" = var.public_subnet[1], "host_url" = trimprefix(var.ingress_url,"https://"), "name" = var.name})
}

