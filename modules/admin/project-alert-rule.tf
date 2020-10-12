# Create a new Rancher2 Project
resource "rancher2_project" "foo" {
  name = "foo"
  cluster_id = "<cluster_id>"
  description = "Terraform project "
  resource_quota {
    project_limit {
      limits_cpu = "2000m"
      limits_memory = "2000Mi"
      requests_storage = "2Gi"
    }
    namespace_default_limit {
      limits_cpu = "500m"
      limits_memory = "500Mi"
      requests_storage = "1Gi"
    }
  }
  container_resource_limit {
    limits_cpu = "20m"
    limits_memory = "20Mi"
    requests_cpu = "1m"
    requests_memory = "1Mi"
  }
}
# Create a new Rancher2 Project Alert Group
resource "rancher2_project_alert_group" "foo" {
  name = "foo"
  description = "Terraform project alert group"
  project_id = rancher2_project.foo.id
  group_interval_seconds = 300
  repeat_interval_seconds = 3600
}
# Create a new Rancher2 Project Alert Rule
resource "rancher2_project_alert_rule" "foo" {
  project_id = rancher2_project_alert_group.foo.project_id
  group_id = rancher2_project_alert_group.foo.id
  name = "foo"
  group_interval_seconds = 600
  repeat_interval_seconds = 6000
}