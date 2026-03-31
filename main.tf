provider "null" {}

resource "null_resource" "deploy_function" {
  provisioner "local-exec" {
    command = <<EOT
      faas-cli template pull
      faas-cli deploy -f stack.yaml
    EOT
  }
}
