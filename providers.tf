terraform {
	required_version = ">= 0.13"

	required_providers {
		rancher2 = {
			source = "rancher/rancher2"
			version = "1.10.1"
		}
	}
}

provider "rancher2" {
    alias = "bootstrap"
    api_url   = local.rancher_api_url
    bootstrap = true
}

provider "rancher2" {
	alias = "admin"

	api_url = rancher2_bootstrap.admin.url
	token_key = rancher2_bootstrap.admin.token
	insecure = true #consider implementing cert-based auth, either that or issue tokens from vault
}