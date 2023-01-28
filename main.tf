resource "local_file" "ingress" {
  content = local.ingress-yaml
  filename = "${path.module}/ingress.yaml"
}

resource "null_resource" "apply-ingress" {
provisioner "local-exec" {
  command = <<EOF
   cat "${path.module}/ingress.yaml"
   EOF
}

}
