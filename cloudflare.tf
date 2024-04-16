terraform {
  cloud {
    organization = "allian"

    workspaces {
      name = "allian"
    }
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

# Configure the Cloudflare provider
provider "cloudflare" {}

# Create a record
variable "zone_id" {
  default = "08c9ad7aa82c8032b81333b370506b18"
}

# Create a record
variable "domain" {
  default = "allian.cl"
}

# Create a page rule
resource "cloudflare_record" "www" {
  zone_id = var.zone_id
  name    = "healthy"
  value   = "healthy-next.fly.dev"
  type    = "CNAME"
  proxied = true
}
