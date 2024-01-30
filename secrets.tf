resource "google_secret_manager_secret" "api_key" {
  // Valid secret_id: [[a-zA-Z_0-9]+]
  secret_id = "${local.resource_name}/api_key"
  labels    = local.tags

  replication {
    automatic = true
  }
}

resource "google_secret_manager_secret_version" "api_key" {
  secret      = google_secret_manager_secret.api_key.id
  secret_data = var.api_key
}
