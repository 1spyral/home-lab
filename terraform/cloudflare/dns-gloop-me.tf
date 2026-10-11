resource "cloudflare_dns_record" "gloop_me_grafana_a" {
  content  = var.home_lab_ip
  name     = "grafana.gloop.me"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "A"
  zone_id  = "cba583fae68e8117fe84bf12589c8112"
  settings = {}
}

resource "cloudflare_dns_record" "gloop_me_gw_claw_cname_acm_validation" {
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

resource "cloudflare_dns_record" "gloop_me_gw_cname_acm_validation" {
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

resource "cloudflare_dns_record" "gloop_me_admin_claw_cname" {
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

resource "cloudflare_dns_record" "gloop_me_api_cname" {
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

resource "cloudflare_dns_record" "gloop_me_api_cname_acm_validation" {
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

resource "cloudflare_dns_record" "gloop_me_claw_cname" {
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

resource "cloudflare_dns_record" "gloop_me_dev_discord_cname" {
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

resource "cloudflare_dns_record" "gloop_me_discord_cname" {
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

resource "cloudflare_dns_record" "gloop_me_wildcard_gw_cname" {
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

resource "cloudflare_dns_record" "gloop_me_gw_cname" {
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

resource "cloudflare_dns_record" "gloop_me_n8n_cname" {
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

resource "cloudflare_dns_record" "gloop_me_sig1_domainkey_cname" {
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

resource "cloudflare_dns_record" "gloop_me_apex_mx_icloud_mx02" {
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

resource "cloudflare_dns_record" "gloop_me_apex_mx_icloud_mx01" {
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

resource "cloudflare_dns_record" "gloop_me_apex_txt_apple_verification" {
  content  = "\"apple-domain=oKE0uJdx4HYlUdvH\""
  name     = "gloop.me"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "cba583fae68e8117fe84bf12589c8112"
  settings = {}
}

resource "cloudflare_dns_record" "gloop_me_apex_txt_spf" {
  content  = "\"v=spf1 include:icloud.com ~all\""
  name     = "gloop.me"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "cba583fae68e8117fe84bf12589c8112"
  settings = {}
}

