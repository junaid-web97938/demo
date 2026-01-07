variable "tenant_id" {
  description = "Azure AD Tenant ID"
  type        = string
}

variable "user_password" {
  description = "Initial password for Batman"
  type        = string
  sensitive   = true
}