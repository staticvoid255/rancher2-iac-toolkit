# Create a new rancher2 cluster Role Template
resource "rancher2_role_template" "foo" {
  name = "foo"
  context = "cluster"
  default_role = true
  description = "Terraform role template acceptance test"
  rules {
    api_groups = ["*"]
    resources = ["secrets"]
    verbs = ["create"]
  }
}
# Create a new rancher2 project Role Template
resource "rancher2_role_template" "foo" {
  name = "foo"
  context = "project"
  default_role = true
  description = "Terraform role template acceptance test"
  rules {
    api_groups = ["*"]
    resources = ["secrets"]
    verbs = ["create"]
  }
}