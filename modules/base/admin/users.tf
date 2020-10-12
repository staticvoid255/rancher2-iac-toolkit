# Create a new rancher2 User
resource "rancher2_user" "foo" {
  name = "Foo user"
  username = "foo"
  password = "changeme"
  enabled = true
}
# Create a new rancher2 global_role_binding for User
resource "rancher2_global_role_binding" "foo" {
  name = "foo"
  global_role_id = "user-base"
  user_id = rancher2_user.foo.id
}

# TODO: iterate over a map in the config to bind and apply users and role bindings dynamically