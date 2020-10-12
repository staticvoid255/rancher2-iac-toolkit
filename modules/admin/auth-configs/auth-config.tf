# Since only one auth config provider can be configured at any one time this will be a single file for now

# Create a new rancher2 Auth Config ActiveDirectory
resource "rancher2_auth_config_activedirectory" "activedirectory" {
  servers = ["<ACTIVEDIRECTORY_SERVER>"]
  service_account_username = "<SERVICE_DN>"
  service_account_password = "<SERVICE_PASSWORD>"
  user_search_base = "<SEARCH_BASE>"
  port = <ACTIVEDIRECTORY_PORT>
}

# Create a new rancher2 Auth Config ADFS
resource "rancher2_auth_config_adfs" "adfs" {
  display_name_field = "<DISPLAY_NAME_FIELD>"
  groups_field = "<GROUPS_FIELD>"
  idp_metadata_content = "<IDP_METADATA_CONTENT>"
  rancher_api_host = "https://<RANCHER_API_HOST>"
  sp_cert = "<SP_CERT>"
  sp_key = "<SP_KEY>"
  uid_field = "<UID_FIELD>"
  user_name_field = "<USER_NAME_FIELD>"
}

# Create a new rancher2 Auth Config AzureAD
resource "rancher2_auth_config_azuread" "azuread" {
  application_id = "<AZUREAD_APP_ID>"
  application_secret = "<AZUREAD_APP_SECRET>"
  auth_endpoint = "<AZUREAD_AUTH_ENDPOINT>"
  graph_endpoint = "<AZUREAD_GRAPH_ENDPOINT>"
  rancher_url = "<RANCHER_URL>"
  tenant_id = "<AZUREAD_TENANT_ID>"
  token_endpoint = "<AZUREAD_TOKEN_ENDPOINT>"
}

# Create a new rancher2 Auth Config FreeIpa
resource "rancher2_auth_config_freeipa" "freeipa" {
  servers = ["<FREEIPA_SERVER>"]
  service_account_distinguished_name = "<SERVICE_DN>"
  service_account_password = "<SERVICE_PASSWORD>"
  user_search_base = "<SEARCH_BASE>"
  port = <FREEIPA_PORT>
}

# Create a new rancher2 Auth Config Github
resource "rancher2_auth_config_github" "github" {
  client_id = "<GITHUB_CLIENT_ID>"
  client_secret = "<GITHUB_CLIENT_SECRET>"
}

# Create a new rancher2 Auth Config KeyCloak
resource "rancher2_auth_config_keycloak" "keycloak" {
  display_name_field = "<DISPLAY_NAME_FIELD>"
  groups_field = "<GROUPS_FIELD>"
  idp_metadata_content = "<IDP_METADATA_CONTENT>"
  rancher_api_host = "https://<RANCHER_API_HOST>"
  sp_cert = "<SP_CERT>"
  sp_key = "<SP_KEY>"
  uid_field = "<UID_FIELD>"
  user_name_field = "<USER_NAME_FIELD>"
}

# Create a new rancher2 Auth Config OKTA
resource "rancher2_auth_config_okta" "okta" {
  display_name_field = "<DISPLAY_NAME_FIELD>"
  groups_field = "<GROUPS_FIELD>"
  idp_metadata_content = "<IDP_METADATA_CONTENT>"
  rancher_api_host = "https://<RANCHER_API_HOST>"
  sp_cert = "<SP_CERT>"
  sp_key = "<SP_KEY>"
  uid_field = "<UID_FIELD>"
  user_name_field = "<USER_NAME_FIELD>"
}

# Create a new rancher2 Auth Config OpenLdap
resource "rancher2_auth_config_openldap" "openldap" {
  servers = ["<OPENLDAP_SERVER>"]
  service_account_distinguished_name = "<SERVICE_DN>"
  service_account_password = "<SERVICE_PASSWORD>"
  user_search_base = "<SEARCH_BASE>"
  port = <OPENLDAP_PORT>
}

# Create a new rancher2 Auth Config Ping
resource "rancher2_auth_config_ping" "ping" {
  display_name_field = "<DISPLAY_NAME_FIELD>"
  groups_field = "<GROUPS_FIELD>"
  idp_metadata_content = "<IDP_METADATA_CONTENT>"
  rancher_api_host = "https://<RANCHER_API_HOST>"
  sp_cert = "<SP_CERT>"
  sp_key = "<SP_KEY>"
  uid_field = "<UID_FIELD>"
  user_name_field = "<USER_NAME_FIELD>"
}