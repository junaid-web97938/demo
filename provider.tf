terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}

  # Disable subscription-level provider registration
  # Required for least-privilege (blob-only RBAC)
  skip_provider_registration = true
}
