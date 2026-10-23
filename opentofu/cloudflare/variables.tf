variable "home_lab_ip" {
  description = "Homelab IP for the API DNS record. Supply through ignored terraform.tfvars or TF_VAR_home_lab_ip."
  type        = string
  sensitive   = true
}
