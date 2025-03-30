module "terraform_service_account" {
  source                = "./modules/service-account"
  project_id            = var.project_id
  service_account_name  = var.terraform_sa_name
  display_name          = "Terraform Service Account"
  roles                 = ["roles/editor", "roles/viewer", "roles/bigquery.admin"]
}
