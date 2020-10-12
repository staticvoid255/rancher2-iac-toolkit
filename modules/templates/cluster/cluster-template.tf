# Create a new rancher2 Cluster Template with upgrade strategy and scheduled cluster scan
resource "rancher2_cluster_template" "foo" {
  name = "foo"
  members {
    access_type = "owner"
    user_principal_id = "local://user-XXXXX"
  }
  template_revisions {
    name = "V1"
    cluster_config {
      rke_config {
        network {
          plugin = "canal"
        }
        services {
          etcd {
            creation = "6h"
            retention = "24h"
          }
        }
        # todo: allow this to be disabled in config
        scheduled_cluster_scan {
            enabled = true
            scan_config {
                cis_scan_config {
                debug_master = true #todo: make dynamic
                debug_worker = true #todo: make dynamic
                }
            }
            schedule_config {
                cron_schedule = "30 * * * *" #todo: make dynamic
                retention = 5 #todo: make dynamic
            }
        }
        upgrade_strategy {
          drain = true
          max_unavailable_worker = "20%" #todo: make dynamic
        }
      }
    }
    default = true
  }
  description = "Terraform cluster template foo"
}