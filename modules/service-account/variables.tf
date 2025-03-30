variable "project_id" {
  description = "The GCP Project ID"
  type        = string
}

variable "service_account_name" {
  description = "The name of the service account"
  type        = string
}

variable "display_name" {
  description = "Display name of the service account"
  type        = string
  default     = "Terraform Service Account"
}

variable "roles" {
  description = "List of IAM roles to assign to the service account"
  type        = list(string)
  default     = []
}
