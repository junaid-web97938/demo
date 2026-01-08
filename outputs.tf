output "thor_user_id" {
  value = azuread_user.thor.id
}

output "thor_upn" {
  value = azuread_user.thor.user_principal_name
}
