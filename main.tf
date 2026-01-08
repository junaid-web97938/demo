resource "azuread_user" "thor" {
  user_principal_name = "thor@junaidweb97outlook.onmicrosoft.com"
  display_name        = "Thor"
  mail_nickname       = "thor"
  account_enabled     = true

  password_profile {
    password                           = "P@ssw0rd-Thor-2026!"
    force_change_password_next_sign_in = false
  }
}
