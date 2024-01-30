variable "api_key" {
  type        = string
  description = "API key to use for authenticating with Sendgrid"
}

variable "domain" {
  type = string
  description = "The domain that you wish to configure and send email from"
}
