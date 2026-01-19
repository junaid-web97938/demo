output "service_principal_ids" {
  value = {
    for k, sp in azuread_service_principal.newsps : k => sp.id
  }
}

output "application_ids" {
  value = {
    for k, app in azuread_application.newapps : k => app.application_id
  }
}

#"azuread_user.newsps" here refers to "sps" in main.tf file
#"azuread_user.newapps" here refers to "apps" in main.tf file