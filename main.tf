resource "azuread_user" "batman" {
  display_name        = "Batman"
  user_principal_name = "batman@junaidweb97outlook.onmicrosoft.com"
  mail_nickname       = "batman"

  password = "Batm@n@123!"
  force_password_change = true
}
