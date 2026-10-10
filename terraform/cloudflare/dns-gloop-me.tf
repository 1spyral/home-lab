resource "cloudflare_dns_record" "terraform_managed_resource_b05fec6ae0f0770d48727905a0513394_0" {
  content  = var.home_lab_ip
  name     = "grafana.gloop.me"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "cba583fae68e8117fe84bf12589c8112"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_9add51b0d31ab540076e85b8ed403937_1" {
  content = "_9c43e50421e11238ef65406724e5c25a.jkddzztszm.acm-validations.aws"
  name    = "_78c46c8cdf028b8ba7faec7adadfd2a3.gw.claw.gloop.me"
  proxied = false
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "cba583fae68e8117fe84bf12589c8112"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "terraform_managed_resource_a056b8354c18cb8ee5dac2161a3c1676_2" {
  content = "_00fe0971fb3f3f70e7c5b8e4dba1f8ec.jkddzztszm.acm-validations.aws"
  name    = "_7c600d11f6f00fc0675a2a7c0a96604b.gw.gloop.me"
  proxied = false
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "cba583fae68e8117fe84bf12589c8112"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "terraform_managed_resource_9b79c9e35ed81c4d8ef6853a99be7b95_3" {
  content = "c33910d9f09f1882.vercel-dns-017.com"
  name    = "admin.claw.gloop.me"
  proxied = false
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "cba583fae68e8117fe84bf12589c8112"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "terraform_managed_resource_8adcf6d8cac936fc043d085d4db5f995_4" {
  content = "claw-dev-alb-1684863563.us-east-1.elb.amazonaws.com"
  name    = "api.gloop.me"
  proxied = false
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "cba583fae68e8117fe84bf12589c8112"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "terraform_managed_resource_545496da681c6c40184668bbcb99d45e_5" {
  content = "_4e4a0aca1c618a5e299376572ed1a43b.jkddzztszm.acm-validations.aws"
  name    = "_b1e470275262ea8292161ede7dd96645.api.gloop.me"
  proxied = false
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "cba583fae68e8117fe84bf12589c8112"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "terraform_managed_resource_c1124d4de8a8619efbd4e2d040391b92_6" {
  content = "6de0d315a1f693f1.vercel-dns-017.com"
  name    = "claw.gloop.me"
  proxied = false
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "cba583fae68e8117fe84bf12589c8112"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "terraform_managed_resource_ac7f2f351c37c174e9426bd63920801a_7" {
  content = "gloop.me"
  name    = "dev-discord.gloop.me"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "cba583fae68e8117fe84bf12589c8112"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "terraform_managed_resource_979eb026d1fc6ab015236fe507a8ff09_8" {
  content = "gloop.me"
  name    = "discord.gloop.me"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "cba583fae68e8117fe84bf12589c8112"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "terraform_managed_resource_ed5a188dfc8e3f13e4c0fe046c8b9b64_9" {
  content = "claw-dev-alb-1684863563.us-east-1.elb.amazonaws.com"
  name    = "*.gw.gloop.me"
  proxied = false
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "cba583fae68e8117fe84bf12589c8112"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "terraform_managed_resource_ec9915d3a2e8e7c6e059d435fdd93a87_10" {
  content = "claw-dev-alb-1684863563.us-east-1.elb.amazonaws.com"
  name    = "gw.gloop.me"
  proxied = false
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "cba583fae68e8117fe84bf12589c8112"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "terraform_managed_resource_d07904d39c3442f60ae4abec0ec98dce_11" {
  content = "0341b06b-3221-4efe-b9e4-b4eb49b27b13.cfargotunnel.com"
  name    = "n8n.gloop.me"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "cba583fae68e8117fe84bf12589c8112"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "terraform_managed_resource_d02fd7aae1512881cc8b28fa623a79f8_12" {
  content = "sig1.dkim.gloop.me.at.icloudmailadmin.com"
  name    = "sig1._domainkey.gloop.me"
  proxied = false
  tags    = []
  ttl     = 3600
  type    = "CNAME"
  zone_id = "cba583fae68e8117fe84bf12589c8112"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "terraform_managed_resource_d8da3c7ff823ee540f437389f0ad9516_13" {
  content  = "mx02.mail.icloud.com"
  name     = "gloop.me"
  priority = 10
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "MX"
  zone_id  = "cba583fae68e8117fe84bf12589c8112"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_e29cda4ed98bbd5bf4339ab228c49c8d_14" {
  content  = "mx01.mail.icloud.com"
  name     = "gloop.me"
  priority = 10
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "MX"
  zone_id  = "cba583fae68e8117fe84bf12589c8112"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_be9cbae017952113d7fea5855aa58c73_15" {
  content  = "\"apple-domain=oKE0uJdx4HYlUdvH\""
  name     = "gloop.me"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "cba583fae68e8117fe84bf12589c8112"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_6d1878ec2c5089671172881c8d1e272a_16" {
  content  = "\"v=spf1 include:icloud.com ~all\""
  name     = "gloop.me"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "cba583fae68e8117fe84bf12589c8112"
  settings = {}
}

