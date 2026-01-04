terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.45"
    }
  }
}

provider "azuread" {
variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}

}
