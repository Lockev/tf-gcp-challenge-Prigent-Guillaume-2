// Creates a Cloud Function that responds to HTTP requests, based on the cloud function bucket source code
resource "google_cloudfunctions_function" "function" {
  name        = var.cloud_function_name
  description = var.cloud_function_description
  runtime     = var.cloud_function_runtime

  available_memory_mb          = var.cloud_function_memory_mb
  source_archive_bucket        = var.storage_bucket_name
  source_archive_object        = var.storage_archive_name
  trigger_http                 = true
  https_trigger_security_level = "SECURE_ALWAYS"
  timeout                      = var.cloud_function_timeout_sec
  entry_point                  = var.entry_point
}

// Invoke the function
resource "google_cloudfunctions_function_iam_member" "invoker" {
  project = var.project
  region  = var.gcp_region
  cloud_function = google_cloudfunctions_function.function.name
  role           = "roles/cloudfunctions.invoker"
  member         = "allUsers"
}