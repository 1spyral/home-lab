terraform {
  backend "gcs" {
    bucket = "home-lab-b2754b63-tofu-state"
    prefix = "home-lab/bootstrap"
  }
}