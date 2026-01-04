resource "azuread_user" "batman" {
  display_name        = var.user_name
  user_principal_name = var.user_principal_name
  mail_nickname       = "batman"

  password = var.initial_password

  force_password_change = true
}