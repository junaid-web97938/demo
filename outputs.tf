output "batman_user_id" {
  value = azuread_user.batman.id
}

output "batman_upn" {
  value = azuread_user.batman.user_principal_name
}
