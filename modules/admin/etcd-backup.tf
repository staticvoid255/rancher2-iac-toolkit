# Create a new rancher2 Etcd Backup
resource "rancher2_etcd_backup" "foo" {
  backup_config {
    enabled = true
    interval_hours = 20
    retention = 10
    s3_backup_config {
      access_key = "access_key"
      bucket_name = "bucket_name"
      endpoint = "endpoint"
      folder = "/folder"
      region = "region"
      secret_key = "secret_key"
    }
  }
  cluster_id = "<CLUSTER_ID>"
  name = "foo"
  filename = "<FILENAME>"
}