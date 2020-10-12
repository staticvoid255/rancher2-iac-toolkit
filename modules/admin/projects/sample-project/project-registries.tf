# Create a new rancher2 Project Registry
resource "rancher2_registry" "foo" {
  name = "foo"
  description = "Terraform registry foo"
  project_id = "<project_id>"
  registries {
    address = "test.io"
    username = "user"
    password = "pass"
  }
}