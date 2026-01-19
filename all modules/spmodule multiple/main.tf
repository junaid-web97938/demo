resource "azuread_application" "newapps" {
  for_each = var.service_principals

  display_name = each.value.display_name
}
resource "azuread_service_principal" "newsps" {
  for_each = azuread_application.newapps

  application_id = each.value.application_id
}
#var.service_principals here refers directly to <variable "service_principals"> in variables.tf
#"newapps" here referes directly to "azuread_user.newapps" in outputs.tf in