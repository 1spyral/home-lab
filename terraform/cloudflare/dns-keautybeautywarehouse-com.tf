resource "cloudflare_dns_record" "keautybeautywarehouse_com_api_a" {
  content  = var.home_lab_ip
  name     = "api.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_autoconfig_a" {
  content  = "23.187.248.15"
  name     = "autoconfig.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_autodiscover_a" {
  content  = "23.187.248.15"
  name     = "autodiscover.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_cpanel_a" {
  content  = "23.187.248.15"
  name     = "cpanel.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_cpcalendars_a" {
  content  = "23.187.248.15"
  name     = "cpcalendars.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_cpcontacts_a" {
  content  = "23.187.248.15"
  name     = "cpcontacts.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_ftp_a" {
  content  = "23.187.248.15"
  name     = "ftp.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_apex_a" {
  content  = "216.198.79.1"
  name     = "keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_webdisk_a" {
  content  = "23.187.248.15"
  name     = "webdisk.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_webmail_a" {
  content  = "23.187.248.15"
  name     = "webmail.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_whm_a" {
  content  = "23.187.248.15"
  name     = "whm.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_cdn_cname" {
  content = "c.storage.googleapis.com"
  name    = "cdn.keautybeautywarehouse.com"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "14b40d53b1989b793e2cdc381a31056c"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_mail_cname" {
  content = "keautybeautywarehouse.com"
  name    = "mail.keautybeautywarehouse.com"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "14b40d53b1989b793e2cdc381a31056c"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_test_cname" {
  content = "ghs.googlehosted.com"
  name    = "test.keautybeautywarehouse.com"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "14b40d53b1989b793e2cdc381a31056c"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_www_cname" {
  content = "keautybeautywarehouse.com"
  name    = "www.keautybeautywarehouse.com"
  proxied = false
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "14b40d53b1989b793e2cdc381a31056c"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_apex_mx_cloudflare_route3" {
  content  = "route3.mx.cloudflare.net"
  name     = "keautybeautywarehouse.com"
  priority = 53
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "MX"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_apex_mx_cloudflare_route2" {
  content  = "route2.mx.cloudflare.net"
  name     = "keautybeautywarehouse.com"
  priority = 9
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "MX"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_apex_mx_cloudflare_route1" {
  content  = "route1.mx.cloudflare.net"
  name     = "keautybeautywarehouse.com"
  priority = 72
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "MX"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_autodiscover_tcp_srv" {
  name     = "_autodiscover._tcp.keautybeautywarehouse.com"
  priority = 0
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "SRV"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  data = {
    port     = 443
    priority = 0
    target   = "cpanelemaildiscovery.cpanel.net"
    weight   = 0
  }
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_caldavs_tcp_txt" {
  content  = "\"path=/\""
  name     = "_caldavs._tcp.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_caldav_tcp_txt" {
  content  = "\"path=/\""
  name     = "_caldav._tcp.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_carddavs_tcp_txt" {
  content  = "\"path=/\""
  name     = "_carddavs._tcp.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_carddav_tcp_txt" {
  content  = "\"path=/\""
  name     = "_carddav._tcp.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_cf2024_1_domainkey_txt" {
  content  = "\"v=DKIM1; h=sha256; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiweykoi+o48IOGuP7GR3X0MOExCUDY/BCRHoWBnh3rChl7WhdyCxW3jgq1daEjPPqoi7sJvdg5hEQVsgVRQP4DcnQDVjGMbASQtrY4WmB1VebF+RPJB2ECPsEDTpeiI5ZyUAwJaVX7r6bznU67g7LvFq35yIo4sdlmtZGV+i0H4cpYH9+3JJ78k\" \"m4KXwaf9xUJCWF6nxeD+qG6Fyruw1Qlbds2r85U9dkNDVAS3gioCvELryh1TxKGiVTkg4wqHTyHfWsp7KD3WQHYJn0RyfJJu6YEmL77zonn7p2SRMvTMP3ZEXibnC9gz3nnhR6wcYL8Q7zXypKTMD58bTixDSJwIDAQAB\""
  name     = "cf2024-1._domainkey.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_default_domainkey_txt" {
  content  = "\"v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkPml42hjZ+f4ZOvaqvA9tSk9Dtv88p4wW6vBUT+R0eyT4T/sPXIhcDXLS/NW9SVdjd+Nnx/KAduTdEkFYZEmFeEhW0oR6kgeIzbzCApzHk7iwZ6el4yBt2vrnzdU0TSa3Z21/LlHmGF8BALrybeQfdpkYgE948YEcuR7MEU1OB7V7znszJbB1cR5pEKeqfzAC\" \"\\010BfHEy2FlzXbnL2BW8bdUYKoipGfBQHNwX9GRgVxIwXfgOjKY1gBXZxNqS02fLG4Ney8ljSAfeMqmOuXUrg+dQwdhUwxyz5eECKe6AlIDyDZvdjxE7yY5k5jLCZ3hs8VtaO0rNGu6fN+FjiV6kObDwIDAQAB;\""
  name     = "default._domainkey.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_dmarc_txt_reject" {
  content  = "\"v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s;\""
  name     = "_dmarc.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_dmarc_txt_none" {
  content  = "\"v=DMARC1; p=none;\""
  name     = "_dmarc.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_wildcard_domainkey_txt" {
  content  = "\"v=DKIM1; p=\""
  name     = "*._domainkey.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_apex_txt_spf" {
  content  = "\"v=spf1 include:_spf.mx.cloudflare.net ~all\""
  name     = "keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "keautybeautywarehouse_com_apex_txt_google_verification" {
  comment  = "Verification for Google Search Console (Google Cloud)"
  content  = "\"google-site-verification=zkLSHq0YRPDX5oMkmF_bU6dA6-fw4MfmWeZcFVgmVTE\""
  name     = "keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

