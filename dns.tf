resource "cloudflare_record" "healthy_front_domain" {
  zone_id = var.ZONE_ID
  name    = "healthy"
  value   = "healthy-front.pages.dev"
  type    = "CNAME"
  proxied = true
}
