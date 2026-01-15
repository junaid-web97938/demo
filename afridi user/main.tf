terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.0"
    }
  }
}

provider "azuread" {
  # Uses Azure CLI or environment-based authentication
}

resource "azuread_user" "afridi" {
  user_principal_name = "afridi@yourtenant.onmicrosoft.com"
  display_name        = "Afridi"
  mail_nickname       = "afridi"

  password = "P@ssword12345!"
  force_password_change = true
}
