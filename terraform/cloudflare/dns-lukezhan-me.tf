resource "cloudflare_dns_record" "lukezhan_me_apex_a" {
  content  = var.home_lab_ip
  name     = "lukezhan.me"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "336eb90d5efec5795327a16382267e9c"
  settings = {}
}

resource "cloudflare_dns_record" "lukezhan_me_sig1_domainkey_cname" {
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

resource "cloudflare_dns_record" "lukezhan_me_apex_mx_icloud_mx01" {
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

resource "cloudflare_dns_record" "lukezhan_me_apex_mx_icloud_mx02" {
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

resource "cloudflare_dns_record" "lukezhan_me_apex_txt_apple_verification" {
  content  = "\"apple-domain=3DMCrRjccpSw9Kr9\""
  name     = "lukezhan.me"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "336eb90d5efec5795327a16382267e9c"
  settings = {}
}

resource "cloudflare_dns_record" "lukezhan_me_apex_txt_spf" {
  content  = "\"v=spf1 include:icloud.com ~all\""
  name     = "lukezhan.me"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "336eb90d5efec5795327a16382267e9c"
  settings = {}
}

