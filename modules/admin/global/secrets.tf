# Create a new rancher2 Project Secret
resource "rancher2_secret" "foo" {
  name = "foo"
  description = "Terraform secret foo"
  project_id = "<project_id>"
  data = {
    address = base64encode("test.io")
    username = base64encode("user2")
    password = base64encode("pass")
  }
}
# Create a new rancher2 Namespaced Secret
resource "rancher2_secret" "foo" {
  name = "foo"
  description = "Terraform secret foo"
  project_id = "<project_id>"
  namespace_id = "<namespace_id>"
  data = {
    address = base64encode("test.io")
    username = base64encode("user2")
    password = base64encode("pass")
  }
}