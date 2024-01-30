provider "google" {
  default_labels = local.tags
}

resource "google_project_service" "sm" {
  service                    = "secretmanager.googleapis.com"
  disable_dependent_services = false
  disable_on_destroy         = false
}
