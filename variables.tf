# Configure the zone ID
variable "ZONE_ID" {
  description = "Zone ID for the Cloudflare provider."
  type        = string
  sensitive   = true
}

# Configure the domain
variable "DOMAIN" {
  description = "Domain name to deploy DNS records for."
  type        = string
  sensitive   = true
}

variable "ACCOUNT_ID" {
  description = "The account ID for the Cloudflare account"
  type        = string
  sensitive   = true
}
