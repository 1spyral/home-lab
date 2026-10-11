# Preserve the state addresses of DNS records imported with cf-terraforming.

moved {
  from = cloudflare_dns_record.terraform_managed_resource_9492e0351f8918f0fc75ce18abe44e88_0
  to   = cloudflare_dns_record.al_dente_site_apex_a
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_a3bbf5aef1df1d3f6837d4a24da67b8c_1
  to   = cloudflare_dns_record.al_dente_site_www_cname
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_72fe6fcd3dbd8e93812bbef699815119_2
  to   = cloudflare_dns_record.al_dente_site_apex_mx_cloudflare_route3
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_9f9ef3db69abbbc1d503a63ba23b9c27_3
  to   = cloudflare_dns_record.al_dente_site_apex_mx_cloudflare_route2
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_1aca4bf5f112325dd1893bcdc5578747_4
  to   = cloudflare_dns_record.al_dente_site_apex_mx_cloudflare_route1
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_88670d871813e46f37e0f22bf9e20327_5
  to   = cloudflare_dns_record.al_dente_site_apex_txt_spf
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_69a6dde07d9e1d6eb0eb557c4e8bcdb6_6
  to   = cloudflare_dns_record.al_dente_site_cf2024_1_domainkey_txt
}
