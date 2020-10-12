# Create a new Rancher2 Global Catalog
resource "rancher2_catalog" "global" {
  name = "foo-global"
  url = "https://<CATALOG_URL>"
}
