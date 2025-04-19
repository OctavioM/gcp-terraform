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

# Resource definition for a BigQuery table named "alerts"
# This table is part of the "carris" dataset and uses a schema defined in a JSON file.
# The table has time-based partitioning on the "timestamp" field with a 30-day expiration.

# resource "google_bigquery_table" "alerts" {
#   dataset_id          = google_bigquery_dataset.carris.dataset_id
#   table_id            = "alerts"
#   deletion_protection = false
#
#   schema = file("schemas/alerts_schema.json") # Protobuf-to-JSON compatible schema
#   time_partitioning {
#     type  = "DAY"
#     field = "timestamp" # Or whatever timestamp field you use
#     expiration_ms = 2592000000 # 30 days in milliseconds
#   }
# }
