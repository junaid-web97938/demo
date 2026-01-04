terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.50"
    }
  }
}

provider "azuread" {}

# Azure AD Application
resource "azuread_application" "ja" {
  display_name = "ja"
}

# Service Principal
resource "azuread_service_principal" "ja" {
  application_id = azuread_application.ja.application_id
}

# OPTIONAL: client secret (ONLY if you are NOT using OIDC)
# Remove this block if using GitHub OIDC
resource "azuread_application_password" "ja_secret" {
  display_name         = "ja-secret"
  application_object_id = azuread_application.ja.object_id
  end_date_relative    = "8760h" # 1 year
}