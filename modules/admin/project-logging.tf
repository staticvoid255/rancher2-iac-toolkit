# Create a new rancher2 Project Logging
resource "rancher2_project_logging" "foo" {
  name = "foo"
  project_id = "<project_id>"
  kind = "syslog"
  syslog_config {
    endpoint = "<syslog_endpoint>"
    protocol = "udp"
    severity = "notice"
    ssl_verify = false
  }
}