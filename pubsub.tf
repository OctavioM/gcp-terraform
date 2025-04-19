
resource "google_pubsub_topic" "gtfs_alerts" {
  project = var.project_id
  name    = "gtfs-alerts"
}
