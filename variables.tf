variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "region" {
  description = "Default GCP Region"
  type        = string
  default     = "europe-west1"
}

variable "terraform_sa_name" {
  description = "Terraform Service Account Name"
  type        = string
  default     = "terraform-sa"
}
