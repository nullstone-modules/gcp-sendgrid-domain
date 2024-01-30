output "api_key_secret_name" {
  value       = google_secret_manager_secret.api_key.name
  description = "string ||| The name of the secret in Google Secrets Manager containing the api_key"
}

output "domain" {
  value = var.domain
  description = "string ||| The domain to used to send emails via Sendgrid"
}
