output "terraform_service_account_email" {
  description = "Terraform Service Account Email"
  value       = google_service_account.sa.email
}

output "service_account_name" {
  description = "The name of the created service account"
  value       = google_service_account.sa.name
}
