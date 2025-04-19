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

variable "cloud_run_sa_name" {
  description = "Cloud Run Service Account Name"
  type        = string
  default     = "cloud-run-sa"
}

variable "schedule" {
  description = "Cloud Scheduler cron schedule"
  type        = string
  default     = "0 12 * * *" # daily at noon
}

locals {
  gtfs_poller_image_url = "gcr.io/${var.project_id}/gtfs-poller"
}
