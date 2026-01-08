resource "azuread_user" "thor" {
  user_principal_name = "thor@junaidweb97outlook.onmicrosoft.com"
  display_name        = "Thor"
  mail_nickname       = "thor"

  password = "P@ssw0rd-Thor-2026!"
  force_password_change_on_next_login = false

  account_enabled = true
}
