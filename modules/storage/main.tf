// Generate a random ID for the cloud function bucket name
resource "random_id" "prefix" {
  byte_length = 8
}

// Create a static storage bucket for the backend
resource "google_storage_bucket" "storage_bucket_backend" {
  name          = "${var.bucket_name}-backend"
  location      = var.bucket_location
}

// Create a storage bucket for the cloud function
resource "google_storage_bucket" "storage_bucket_cloud_function" {
  name          = "${var.bucket_name}-${random_id.prefix.hex}"
  location      = var.bucket_location
}

// Fill the cloud function bucket with the cloud function code
resource "google_storage_bucket_object" "archive" {
  name          = "index.zip"
  bucket        = google_storage_bucket.storage_bucket_cloud_function.name
  source        = "./src/hello-world.zip"
}
