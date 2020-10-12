# Create a new rancher2 Token
resource "rancher2_token" "foo" {
  description = "foo token"
  ttl = 1200
}
# Create a new rancher2 Token scoped
resource "rancher2_token" "foo" {
  cluster_id = "<cluster-id>"
  description = "foo token"
  ttl = 1200
}