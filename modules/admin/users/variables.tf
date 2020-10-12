variable "users" {
    type    = map
    default = {
        "test" = {
            name = "testing"
            username = "testing"
            password = "changeme"
            enabled = true
        }
    }
}