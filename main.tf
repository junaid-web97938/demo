terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.44"
    }
  }
}

provider "azuread" {}

resource "azuread_user" "thor" {
  # Using your tenant domain as shared in your code
  user_principal_name = "thor@junaidweb97outlook.onmicrosoft.com"

  display_name  = "Thor"
  mail_nickname = "thor"
  account_enabled = true

  # Flat password syntax for provider v2.44
  password              = "P@ssw0rd-Thor-2026!"
  force_password_change = false
}

output "thor_user_id" {
  value = azuread_user.thor.id
}

output "thor_upn" {
  value = azuread_user.thor.user_principal_name
}
