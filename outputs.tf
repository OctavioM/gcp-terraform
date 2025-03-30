output "terraform_service_account_email" {
  description = "Terraform Service Account Email"
  value       = google_service_account.terraform.email
}
