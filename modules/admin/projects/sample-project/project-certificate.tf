# Create a new rancher2 Project Certificate
resource "rancher2_certificate" "foo" {
  certs = base64encode(<PUBLIC_CERTS>)
  key = base64encode(<PRIVATE_KEY>)
  name = "foo"
  description = "Terraform certificate foo"
  project_id = "<project_id>"
}