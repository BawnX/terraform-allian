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
