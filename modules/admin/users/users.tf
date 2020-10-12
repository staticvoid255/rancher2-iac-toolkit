# Create a new rancher2 User
resource "rancher2_user" "foo" {
  name = "Foo user"
  username = "foo"
  password = "changeme"
  enabled = true
}

# TODO: iterate over a map in the config to bind and apply users and role bindings dynamically