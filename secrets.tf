resource "google_secret_manager_secret" "api_key" {
  // Valid secret_id: [[a-zA-Z_0-9]+]
  secret_id = "${local.resource_name}-api_key"

  replication {
    auto {}
  }

  depends_on = [google_project_service.sm]
}

resource "google_secret_manager_secret_version" "api_key" {
  secret      = google_secret_manager_secret.api_key.id
  secret_data = var.api_key
}
