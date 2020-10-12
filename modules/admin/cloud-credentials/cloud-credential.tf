# Create a new rancher2 Cloud Credential
resource "rancher2_cloud_credential" "aws" {
    for_each = var.rancher2_cloud_credentials.aws.*

    content = each.value
}
