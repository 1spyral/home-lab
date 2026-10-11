# Preserve the state addresses of DNS records imported with cf-terraforming.

moved {
  from = cloudflare_dns_record.terraform_managed_resource_b05fec6ae0f0770d48727905a0513394_0
  to   = cloudflare_dns_record.gloop_me_grafana_a
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_9add51b0d31ab540076e85b8ed403937_1
  to   = cloudflare_dns_record.gloop_me_gw_claw_cname_acm_validation
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_a056b8354c18cb8ee5dac2161a3c1676_2
  to   = cloudflare_dns_record.gloop_me_gw_cname_acm_validation
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_9b79c9e35ed81c4d8ef6853a99be7b95_3
  to   = cloudflare_dns_record.gloop_me_admin_claw_cname
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_8adcf6d8cac936fc043d085d4db5f995_4
  to   = cloudflare_dns_record.gloop_me_api_cname
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_545496da681c6c40184668bbcb99d45e_5
  to   = cloudflare_dns_record.gloop_me_api_cname_acm_validation
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_c1124d4de8a8619efbd4e2d040391b92_6
  to   = cloudflare_dns_record.gloop_me_claw_cname
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_ac7f2f351c37c174e9426bd63920801a_7
  to   = cloudflare_dns_record.gloop_me_dev_discord_cname
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_979eb026d1fc6ab015236fe507a8ff09_8
  to   = cloudflare_dns_record.gloop_me_discord_cname
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_ed5a188dfc8e3f13e4c0fe046c8b9b64_9
  to   = cloudflare_dns_record.gloop_me_wildcard_gw_cname
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_ec9915d3a2e8e7c6e059d435fdd93a87_10
  to   = cloudflare_dns_record.gloop_me_gw_cname
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_d07904d39c3442f60ae4abec0ec98dce_11
  to   = cloudflare_dns_record.gloop_me_n8n_cname
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_d02fd7aae1512881cc8b28fa623a79f8_12
  to   = cloudflare_dns_record.gloop_me_sig1_domainkey_cname
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_d8da3c7ff823ee540f437389f0ad9516_13
  to   = cloudflare_dns_record.gloop_me_apex_mx_icloud_mx02
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_e29cda4ed98bbd5bf4339ab228c49c8d_14
  to   = cloudflare_dns_record.gloop_me_apex_mx_icloud_mx01
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_be9cbae017952113d7fea5855aa58c73_15
  to   = cloudflare_dns_record.gloop_me_apex_txt_apple_verification
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_6d1878ec2c5089671172881c8d1e272a_16
  to   = cloudflare_dns_record.gloop_me_apex_txt_spf
}
