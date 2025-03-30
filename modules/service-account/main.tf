resource "google_service_account" "sa" {
  account_id   = var.service_account_name
  display_name = var.display_name
}

resource "google_project_iam_member" "roles" {
  for_each = toset(var.roles)
  project  = var.project_id
  role     = each.key
  member   = "serviceAccount:${google_service_account.sa.email}"
}
