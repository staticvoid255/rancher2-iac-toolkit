# Create a new Rancher2 Project Alert Group
resource "rancher2_project_alert_group" "foo" {
  name = "foo"
  description = "Terraform project alert group"
  project_id = "<project_id>"
  group_interval_seconds = 300
  repeat_interval_seconds = 3600
}