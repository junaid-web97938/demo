output "batman_user_id" {
  description = "Object ID of the Batman user"
  value       = azuread_user.batman.id
}

output "batman_upn" {
  description = "User Principal Name of Batman"
  value       = azuread_user.batman.user_principal_name
}