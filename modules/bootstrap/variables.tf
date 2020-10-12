variable "rancher2_admin_password" {
    description = "Password for the default admin user"
    type    = string
}

variable "rancher2_bootstrap_enable_telemetry" {
    description = "Enable sending of anonymous usage reports to Rancher"
    type    = bool
    default = false
}

