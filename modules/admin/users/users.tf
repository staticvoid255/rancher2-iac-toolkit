# Create a new rancher2 User
# TODO: iterate over a map in the config to bind and apply users and role bindings dynamically
resource "rancher2_user" "test" {
  for_each = var.users

  content {
    name = each.name
    username = each.username
    password = each.password
    enabled = each.enables
  }

}

