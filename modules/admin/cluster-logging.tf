# Create a new Rancher2 Cluster Logging
resource "rancher2_cluster_logging" "foo" {
  name = "foo"
  cluster_id = "<cluster_id>"
  kind = "syslog"
  syslog_config {
    endpoint = "<syslog_endpoint>"
    protocol = "udp"
    severity = "notice"
    ssl_verify = false
  }
}