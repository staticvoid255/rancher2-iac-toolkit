variable "bool" {
    type    = bool
    default = true
}

variable "string" {
    type    = string
    default = "string"
}

variable "number" {
    type    = number
    default = 42
}

variable "map" {
    type    = map
    default = {}
}

variable "list" {
    type    = list
    default = []
}


variable "rancher2_catalogs" {
    type    = map
    default = {
          "foo" {
                "name" = "foo-global"
                "url" = "https://<CATALOG_URL>"
                "scope" = "global" # todo: implement other scopes in future
        }
    }
}

variable "rancher2_cloud_credentials" {
    type    = map
    default = {
        aws = {
            default = {
                name = "foo",
                description = "foo description",
                amazonec2_credential_config {
                        access_key = null
                        secret_key = null
                }
            }
        },
        azure = {
            default = {
                name = "foo",
                description = "foo description",
                amazonec2_credential_config {
                        access_key = null
                        secret_key = null
                }
            }
        }
    }
}