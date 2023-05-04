output "backend_bucket_name" {
  value = google_storage_bucket.storage_bucket_backend.name
}

output "storage_bucket_name" {
  value = google_storage_bucket.storage_bucket_cloud_function.name
}

output "storage_archive_name" {
  value = google_storage_bucket_object.archive.name
}