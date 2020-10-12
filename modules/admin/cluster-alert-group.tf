# Create a new Rancher2 Cluster Alert Group
resource "rancher2_cluster_alert_group" "foo" {
  cluster_id = "<cluster_id>"
  name = "foo"
  description = "Terraform cluster alert group"
  group_interval_seconds = 300
  repeat_interval_seconds = 3600
}