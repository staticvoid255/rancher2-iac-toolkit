/* FOR SECURITY REASONS DO NOT USE GLOBAL CATALOGS
# Create a new Rancher2 Global Catalog
resource "rancher2_catalog" "global" {
  name = "foo-global"
  url = "https://<CATALOG_URL>"
} */

# Create a new Rancher2 Cluster Catalog
resource "rancher2_catalog" "cluster" {
  name = "foo-cluster"
  url = "https://<CATALOG_URL>"
  scope = "cluster"
}
# Create a new Rancher2 Project Catalog
resource "rancher2_catalog" "project" {
    # make this dynamic 
    name = "foo-project"
    url = "https://<CATALOG_URL>"
    scope = "project" #cluster, global, and project are supported
    project_id = <PROJECT_ID>
}

