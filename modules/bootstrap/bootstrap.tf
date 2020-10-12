# Admin must be bootstrapped before use
resource "rancher2_bootstrap" "admin" {
  provider = "rancher2.bootstrap"

  password = var.rancher2_admin_password
  telemetry = false
}