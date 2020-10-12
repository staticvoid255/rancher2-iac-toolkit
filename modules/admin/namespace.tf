resource "rancher2_namespace" "foo" {
  name = "foo"
  description = "Foo namespace"
  project_id = "<project_id>"
  resource_quota {
    limit {
      limits_cpu = "100m"
      limits_memory = "100Mi"
      requests_storage = "1Gi"
    }
  }
}