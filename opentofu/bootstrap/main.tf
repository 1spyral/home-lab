resource "random_id" "project_suffix" {
  byte_length = 4
}

resource "google_project" "home_lab" {
  name            = "Home Lab"
  project_id      = "home-lab-${random_id.project_suffix.hex}"
  billing_account = var.billing_account_id
  org_id          = var.org_id
  folder_id       = var.folder_id
  deletion_policy = "PREVENT"

  labels = {
    managed_by = "opentofu"
    repository = "home-lab"
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "google_project_service" "storage" {
  project            = google_project.home_lab.project_id
  service            = "storage.googleapis.com"
  disable_on_destroy = false
}

resource "google_storage_bucket" "state" {
  name                        = coalesce(var.bucket_name, "${google_project.home_lab.project_id}-tofu-state")
  project                     = google_project.home_lab.project_id
  location                    = var.location
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
  force_destroy               = false

  versioning {
    enabled = true
  }

  soft_delete_policy {
    retention_duration_seconds = 604800
  }

  labels = {
    managed_by = "opentofu"
    repository = "home-lab"
    purpose    = "infrastructure-state"
  }

  lifecycle {
    prevent_destroy = true
  }

  depends_on = [google_project_service.storage]
}
