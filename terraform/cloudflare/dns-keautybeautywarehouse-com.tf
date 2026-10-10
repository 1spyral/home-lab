resource "cloudflare_dns_record" "terraform_managed_resource_89eaa3e435c15d31a536d636db14207f_0" {
  content  = var.home_lab_ip
  name     = "api.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_72dcc7cb1acbb36850c5635b09da5df4_1" {
  content  = "23.187.248.15"
  name     = "autoconfig.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_d06054bbc8d0207bb8b7833adcb7963b_2" {
  content  = "23.187.248.15"
  name     = "autodiscover.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_e36260891f85c46fe6dd6e1d47c89334_3" {
  content  = "23.187.248.15"
  name     = "cpanel.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_fe7c97661a5853fac4cb9b2d564f78b7_4" {
  content  = "23.187.248.15"
  name     = "cpcalendars.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_5a02d55b3a23069425ec0a074d44d396_5" {
  content  = "23.187.248.15"
  name     = "cpcontacts.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_cedc3f7747b5777dee37ee26487b00c3_6" {
  content  = "23.187.248.15"
  name     = "ftp.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_4bac7427ce29ddd03607645f08ffc347_7" {
  content  = "216.198.79.1"
  name     = "keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_359b489766a9d809437320e18ef6f664_8" {
  content  = "23.187.248.15"
  name     = "webdisk.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_1e972da633ed6a9ac465fa0ae90fdf21_9" {
  content  = "23.187.248.15"
  name     = "webmail.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_29ed411913ea08bbdebe8eebc25b5922_10" {
  content  = "23.187.248.15"
  name     = "whm.keautybeautywarehouse.com"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_e0367a4bdf199141b30b1e1656f4cdd1_11" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_932dd95b3dc66940b9ed1bcfc37ec749_12" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_7018ed3f43f9a0eed602ded7e8e0d0f4_13" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_c097caa2b13bf950fc3abe2e7e0853c7_14" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_94bbb8057463075761364f4a6955c54b_15" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_0c1146378e335365446bbadc864ae8ac_16" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_95e3c8445bc26d35d082351f9748a177_17" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_3c7f67930cd3e147206f51d2f0246ad8_18" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_eb19201b444831469e27259c5c890e4b_20" {
  content  = "\"path=/\""
  name     = "_caldavs._tcp.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_d31c257010c424f6757a549b057f30d9_21" {
  content  = "\"path=/\""
  name     = "_caldav._tcp.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_0aa6b7afe361c90fe042ba7d27bfbb5f_22" {
  content  = "\"path=/\""
  name     = "_carddavs._tcp.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_3d2d49a3230047e38db231259ceb7cbb_23" {
  content  = "\"path=/\""
  name     = "_carddav._tcp.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_8bc312a4371d61a49bb0033a4b4332c8_24" {
  content  = "\"v=DKIM1; h=sha256; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiweykoi+o48IOGuP7GR3X0MOExCUDY/BCRHoWBnh3rChl7WhdyCxW3jgq1daEjPPqoi7sJvdg5hEQVsgVRQP4DcnQDVjGMbASQtrY4WmB1VebF+RPJB2ECPsEDTpeiI5ZyUAwJaVX7r6bznU67g7LvFq35yIo4sdlmtZGV+i0H4cpYH9+3JJ78k\" \"m4KXwaf9xUJCWF6nxeD+qG6Fyruw1Qlbds2r85U9dkNDVAS3gioCvELryh1TxKGiVTkg4wqHTyHfWsp7KD3WQHYJn0RyfJJu6YEmL77zonn7p2SRMvTMP3ZEXibnC9gz3nnhR6wcYL8Q7zXypKTMD58bTixDSJwIDAQAB\""
  name     = "cf2024-1._domainkey.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_9a883c997b093137fe2f14f3aa12d776_26" {
  content  = "\"v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkPml42hjZ+f4ZOvaqvA9tSk9Dtv88p4wW6vBUT+R0eyT4T/sPXIhcDXLS/NW9SVdjd+Nnx/KAduTdEkFYZEmFeEhW0oR6kgeIzbzCApzHk7iwZ6el4yBt2vrnzdU0TSa3Z21/LlHmGF8BALrybeQfdpkYgE948YEcuR7MEU1OB7V7znszJbB1cR5pEKeqfzAC\" \"\\010BfHEy2FlzXbnL2BW8bdUYKoipGfBQHNwX9GRgVxIwXfgOjKY1gBXZxNqS02fLG4Ney8ljSAfeMqmOuXUrg+dQwdhUwxyz5eECKe6AlIDyDZvdjxE7yY5k5jLCZ3hs8VtaO0rNGu6fN+FjiV6kObDwIDAQAB;\""
  name     = "default._domainkey.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_06aacdcbfb0e6245166a74cf796d70b7_27" {
  content  = "\"v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s;\""
  name     = "_dmarc.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_b7ff4d1c3013f79e95bf5be8c504ed8a_28" {
  content  = "\"v=DMARC1; p=none;\""
  name     = "_dmarc.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_5b5ec3d0196f387a84f1d8b5b345462a_29" {
  content  = "\"v=DKIM1; p=\""
  name     = "*._domainkey.keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_9c7a0af9407d830297c8a6c165e4d879_30" {
  content  = "\"v=spf1 include:_spf.mx.cloudflare.net ~all\""
  name     = "keautybeautywarehouse.com"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "14b40d53b1989b793e2cdc381a31056c"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_c9ae09ca7b3d6d0254cb5af699798e16_31" {
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

