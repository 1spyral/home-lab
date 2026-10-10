resource "cloudflare_dns_record" "terraform_managed_resource_36540a91e54a354a2c42d61a51654c02_0" {
  content  = var.home_lab_ip
  name     = "lukezhan.me"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "336eb90d5efec5795327a16382267e9c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_73d9a49fab30a9af500772928e2b13f6_1" {
  content = "sig1.dkim.lukezhan.me.at.icloudmailadmin.com"
  name    = "sig1._domainkey.lukezhan.me"
  proxied = false
  tags    = []
  ttl     = 3600
  type    = "CNAME"
  zone_id = "336eb90d5efec5795327a16382267e9c"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "terraform_managed_resource_99073cd4ea01f07483bfd3ad81600996_2" {
  content  = "mx01.mail.icloud.com"
  name     = "lukezhan.me"
  priority = 10
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "MX"
  zone_id  = "336eb90d5efec5795327a16382267e9c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_8b2be81637dcfbeafa38560b63dd5aa1_3" {
  content  = "mx02.mail.icloud.com"
  name     = "lukezhan.me"
  priority = 10
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "MX"
  zone_id  = "336eb90d5efec5795327a16382267e9c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_e18286f7f0c11c1f2a8193c9c162d502_4" {
  content  = "\"apple-domain=3DMCrRjccpSw9Kr9\""
  name     = "lukezhan.me"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "336eb90d5efec5795327a16382267e9c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_488dfe0683186c47aa40f754308d716d_5" {
  content  = "\"v=spf1 include:icloud.com ~all\""
  name     = "lukezhan.me"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "336eb90d5efec5795327a16382267e9c"
  settings = {}
}

