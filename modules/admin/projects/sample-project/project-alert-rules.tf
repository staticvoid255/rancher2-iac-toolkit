# Create a new Rancher2 Project Alert Rule
resource "rancher2_project_alert_rule" "foo" {
  project_id = rancher2_project_alert_group.foo.project_id
  group_id = rancher2_project_alert_group.foo.id
  name = "foo"
  group_interval_seconds = 600
  repeat_interval_seconds = 6000
}