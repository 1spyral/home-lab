# Preserve the state addresses of DNS records imported with cf-terraforming.

moved {
  from = cloudflare_dns_record.terraform_managed_resource_36540a91e54a354a2c42d61a51654c02_0
  to   = cloudflare_dns_record.lukezhan_me_apex_a
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_73d9a49fab30a9af500772928e2b13f6_1
  to   = cloudflare_dns_record.lukezhan_me_sig1_domainkey_cname
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_99073cd4ea01f07483bfd3ad81600996_2
  to   = cloudflare_dns_record.lukezhan_me_apex_mx_icloud_mx01
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_8b2be81637dcfbeafa38560b63dd5aa1_3
  to   = cloudflare_dns_record.lukezhan_me_apex_mx_icloud_mx02
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_e18286f7f0c11c1f2a8193c9c162d502_4
  to   = cloudflare_dns_record.lukezhan_me_apex_txt_apple_verification
}

moved {
  from = cloudflare_dns_record.terraform_managed_resource_488dfe0683186c47aa40f754308d716d_5
  to   = cloudflare_dns_record.lukezhan_me_apex_txt_spf
}
