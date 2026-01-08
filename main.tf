variable "domain" {
  default = "junaidweb97outlook.onmicrosoft.com"
}

resource "azuread_user" "batman" {
  user_principal_name = "batman@${var.domain}"
  display_name        = "Batman"
  password            = "SuperSecret123!"
}
