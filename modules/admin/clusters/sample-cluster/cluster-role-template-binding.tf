# Create a new Rancher2 Cluster Role Template Binding
resource "rancher2_cluster_role_template_binding" "foo" {
  name = "foo"
  cluster_id = "<cluster_id>"
  role_template_id = "<role_template_id>"
  user_id = "<user_id>"
}