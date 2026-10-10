resource "cloudflare_dns_record" "terraform_managed_resource_9492e0351f8918f0fc75ce18abe44e88_0" {
  content  = var.home_lab_ip
  name     = "al-dente.site"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "1147c7c1da656060132b3123468eda2f"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_a3bbf5aef1df1d3f6837d4a24da67b8c_1" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_72fe6fcd3dbd8e93812bbef699815119_2" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_9f9ef3db69abbbc1d503a63ba23b9c27_3" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_1aca4bf5f112325dd1893bcdc5578747_4" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_88670d871813e46f37e0f22bf9e20327_5" {
  content  = "\"v=spf1 include:_spf.mx.cloudflare.net ~all\""
  name     = "al-dente.site"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "1147c7c1da656060132b3123468eda2f"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_69a6dde07d9e1d6eb0eb557c4e8bcdb6_6" {
  content  = "\"v=DKIM1; h=sha256; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiweykoi+o48IOGuP7GR3X0MOExCUDY/BCRHoWBnh3rChl7WhdyCxW3jgq1daEjPPqoi7sJvdg5hEQVsgVRQP4DcnQDVjGMbASQtrY4WmB1VebF+RPJB2ECPsEDTpeiI5ZyUAwJaVX7r6bznU67g7LvFq35yIo4sdlmtZGV+i0H4cpYH9+3JJ78k\" \"m4KXwaf9xUJCWF6nxeD+qG6Fyruw1Qlbds2r85U9dkNDVAS3gioCvELryh1TxKGiVTkg4wqHTyHfWsp7KD3WQHYJn0RyfJJu6YEmL77zonn7p2SRMvTMP3ZEXibnC9gz3nnhR6wcYL8Q7zXypKTMD58bTixDSJwIDAQAB\""
  name     = "cf2024-1._domainkey.al-dente.site"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "1147c7c1da656060132b3123468eda2f"
  settings = {}
}

