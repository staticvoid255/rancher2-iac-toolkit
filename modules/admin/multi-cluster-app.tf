# Create a new rancher2 Multi Cluster App overriding answers
resource "rancher2_multi_cluster_app" "foo" {
  catalog_name = "<catalog_name>"
  name = "foo"
  targets {
    project_id = "<project_id1>"
  }
  targets {
    project_id = "<project_id2>"
  }
  template_name = "<template_name>"
  template_version = "<template_version>"
  answers {
    values = {
      "ingress_host" = "test.xip.io"
    }
  }
  answers {
    project_id = "<project_id2>"
    values = {
      "ingress_host" = "test2.xip.io"
    }
  }
  roles = ["project-member"]
}