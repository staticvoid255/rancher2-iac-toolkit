# Create a new Rancher2 Cluster Alert Rule
resource "rancher2_cluster_alert_rule" "foo" {
  cluster_id = rancher2_cluster_alert_group.foo.cluster_id
  group_id = rancher2_cluster_alert_group.foo.id
  name = "foo"
  group_interval_seconds = 600
  repeat_interval_seconds = 6000
}