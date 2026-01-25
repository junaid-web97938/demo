variable "service_principals" {
  description = "Service principals to create"
  type = map(object({
    display_name = string
  }))
}

#<variable "service_principals"> here is referenced from var.service_principals in main.tf