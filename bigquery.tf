resource "google_bigquery_dataset" "carris" {
  project    = var.project_id
  dataset_id = "carris"
  location   = "EU"
}