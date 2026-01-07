data "azuread_client_config" "current" {}

resource "azuread_user" "batman" {
  user_principal_name   = "batman@\$junaidweb97outlook.onmicrosoft.com"
  display_name          = "Batman"
  mail_nickname         = "batman"

  password              = random_password.batman.result
  force_password_change = true
  account_enabled       = true
}
