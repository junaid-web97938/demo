variable "user_name" {
  description = "Display name of the Azure AD user"
  type        = string
  default     = "Batman"
}

variable "user_principal_name" {
  description = "User principal name (email-style login)"
  type        = string
  # Example: batman@yourtenant.onmicrosoft.com
}

variable "initial_password" {
  description = "Initial password for the user"
  type        = string
  sensitive   = true
}