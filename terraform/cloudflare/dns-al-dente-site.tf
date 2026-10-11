resource "cloudflare_dns_record" "al_dente_site_apex_a" {
  content  = var.home_lab_ip
  name     = "al-dente.site"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "1147c7c1da656060132b3123468eda2f"
  settings = {}
}

resource "cloudflare_dns_record" "al_dente_site_www_cname" {
  content = "al-dente.site"
  name    = "www.al-dente.site"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "1147c7c1da656060132b3123468eda2f"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "al_dente_site_apex_mx_cloudflare_route3" {
  content  = "route3.mx.cloudflare.net"
  name     = "al-dente.site"
  priority = 63
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "MX"
  zone_id  = "1147c7c1da656060132b3123468eda2f"
  settings = {}
}

resource "cloudflare_dns_record" "al_dente_site_apex_mx_cloudflare_route2" {
  content  = "route2.mx.cloudflare.net"
  name     = "al-dente.site"
  priority = 55
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "MX"
  zone_id  = "1147c7c1da656060132b3123468eda2f"
  settings = {}
}

resource "cloudflare_dns_record" "al_dente_site_apex_mx_cloudflare_route1" {
  content  = "route1.mx.cloudflare.net"
  name     = "al-dente.site"
  priority = 76
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "MX"
  zone_id  = "1147c7c1da656060132b3123468eda2f"
  settings = {}
}

resource "cloudflare_dns_record" "al_dente_site_apex_txt_spf" {
  content  = "\"v=spf1 include:_spf.mx.cloudflare.net ~all\""
  name     = "al-dente.site"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "1147c7c1da656060132b3123468eda2f"
  settings = {}
}

resource "cloudflare_dns_record" "al_dente_site_cf2024_1_domainkey_txt" {
  content  = "\"v=DKIM1; h=sha256; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiweykoi+o48IOGuP7GR3X0MOExCUDY/BCRHoWBnh3rChl7WhdyCxW3jgq1daEjPPqoi7sJvdg5hEQVsgVRQP4DcnQDVjGMbASQtrY4WmB1VebF+RPJB2ECPsEDTpeiI5ZyUAwJaVX7r6bznU67g7LvFq35yIo4sdlmtZGV+i0H4cpYH9+3JJ78k\" \"m4KXwaf9xUJCWF6nxeD+qG6Fyruw1Qlbds2r85U9dkNDVAS3gioCvELryh1TxKGiVTkg4wqHTyHfWsp7KD3WQHYJn0RyfJJu6YEmL77zonn7p2SRMvTMP3ZEXibnC9gz3nnhR6wcYL8Q7zXypKTMD58bTixDSJwIDAQAB\""
  name     = "cf2024-1._domainkey.al-dente.site"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "1147c7c1da656060132b3123468eda2f"
  settings = {}
}

