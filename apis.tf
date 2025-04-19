# resource "google_project_service" "bigquery" {
#  project            = var.project_id
#  service            = "bigquery.googleapis.com"
#  disable_on_destroy = false
# }

# resource "google_project_service" "pubsub" {
#   service = "pubsub.googleapis.com"
# }


resource "google_project_service" "required" {
  project = var.project_id
  for_each = toset([
    "bigquery.googleapis.com",
    "pubsub.googleapis.com",
    "iamcredentials.googleapis.com"
  ])
  service = each.key
}
