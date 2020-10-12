# Create a new rancher2 Global Role Binding using user_id
resource "rancher2_global_role_binding" "foo" {
  name = "foo"
  global_role_id = "admin"
  user_id = "user-XXXXX"
}
# Create a new rancher2 Global Role Binding using group_principal_id
resource "rancher2_global_role_binding" "foo2" {
  name = "foo2"
  global_role_id = "admin"
  group_principal_id = "local://g-XXXXX"
}