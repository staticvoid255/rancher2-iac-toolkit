# Create a new rancher2 Project Role Template Binding
resource "rancher2_project_role_template_binding" "foo" {
  name = "foo"
  project_id = "<project_id>"
  role_template_id = "<role_template_id>"
  user_id = "<user_id>"
}