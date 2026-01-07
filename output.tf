output "batman_user_id" {
  value       = azuread_user.batman.id
  description = "Object ID of Batman user"
}

output "batman_temp_password" {
  value       = random_password.batman.result
  description = "Temporary password for Batman"
  sensitive   = true
}
