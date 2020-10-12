# Create a new Rancher2 Global Catalog
resource "rancher2_catalog" "foo-global" {
  name = "foo-global"
  url = "https://<CATALOG_URL>"
}
# Create a new Rancher2 Cluster Catalog
resource "rancher2_catalog" "foo-cluster" {
  name = "foo-cluster"
  url = "https://<CATALOG_URL>"
  scope = "cluster"
}
# Create a new Rancher2 Project Catalog
resource "rancher2_catalog" "foo-project" {
  name = "foo-project"
  url = "https://<CATALOG_URL>"
  scope = "project"
}