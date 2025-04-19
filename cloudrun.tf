# # Cloud Run
# 
# resource "google_cloud_run_service" "gtfs_poller" {
#   name     = "gtfs-poller"
#   location = var.region
# 
#   template {
#     spec {
#       service_account_name = google_service_account.cloud_run_service_account.email
#       containers {
#         image = var.gtfs_poller_image_url
#         ports {
#           container_port = 8080
#         }
#       }
#     }
#   }
# 
#   traffics {
#     percent         = 100
#     latest_revision = true
#   }
# }
# 
# resource "google_cloud_scheduler_job" "gtfs_poller_trigger" {
#   name        = "gtfs-poller-job"
#   description = "Poll GTFS alerts and push to Pub/Sub"
#   schedule    = var.schedule
# 
#   http_target {
#     uri         = google_cloud_run_service.gtfs_poller.status[0].url
#     http_method = "GET"
# 
#     oidc_token {
#       service_account_email = google_service_account.cloud_run.email
#     }
#   }
# }
