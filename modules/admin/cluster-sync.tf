# Create a new rancher2 Cluster Sync
resource "rancher2_cluster_sync" "foo-custom" {
  cluster_id =  rancher2_cluster.foo-custom.id
  node_pool_ids = [rancher2_node_pool.foo.id]
}