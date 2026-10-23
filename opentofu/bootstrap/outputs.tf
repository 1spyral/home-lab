output "project_id" {
  description = "Generated project ID, preserved by the bootstrap state."
  value       = google_project.home_lab.project_id
}

output "state_bucket_name" {
  description = "Bucket used by the bootstrap and Cloudflare GCS backends."
  value       = google_storage_bucket.state.name
}
