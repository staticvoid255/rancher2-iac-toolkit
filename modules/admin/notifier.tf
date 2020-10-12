# Create a new rancher2 Notifier
resource "rancher2_notifier" "foo" {
  name = "foo"
  cluster_id = "<cluster_id>"
  description = "Terraform notifier acceptance test"
  send_resolved = "true"
  pagerduty_config {
    service_key = "XXXXXXXX"
    proxy_url = "http://proxy.test.io"
  }
}