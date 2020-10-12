resource "rancher2_app" "foo" {
  catalog_name = "<catalog_name>"
  name = "foo"
  description = "Foo app"
  project_id = "<project_id>"
  template_name = "<template_name>"
  template_version = "<template_version>"
  target_namespace = rancher2_namespace.foo.id
  answers = {
    "ingress_host" = "test.xip.io"
    "foo" = "bar"
    "ingress.annotations.nginx.ingress.kubernetes.io/force-ssl-redirect" = true
  }
}