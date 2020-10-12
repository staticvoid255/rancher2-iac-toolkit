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
# Create a new rancher2 Namespaced Registry
# TODO: maybe use this to direct prod namespace to private registry
resource "rancher2_registry" "foo" {
  name = "foo"
  description = "Terraform registry foo"
  project_id = "<project_id>"
  namespace_id = "<namespace_id>"
  registries {
    address = "test.io"
    username = "user2"
    password = "pass"
  }
}