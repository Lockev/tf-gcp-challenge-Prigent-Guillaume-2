terraform {
    // define where the backend can find its source code
#   backend "gcs" {
#     bucket  = "tf-gcp-challenge-prigent-g"
#     prefix  = "terraform/state"
#   }

  // define the required providers
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

// define the google configuration variables
provider "google" {
    credentials = "${file("credentials.json")}"

    version = "4.63.1"
    project = var.project
    region  = var.gcp_region
    zone    = var.gcp_zone
}

// define on which vpc_network the project will be deployed
resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network-challenge"
  auto_create_subnetworks = "true"
}

// Import storage module
module "storage" {
  source = "./modules/storage"
}

// Import cloud functions module
module "cloud_functions" {
  source = "./modules/cloud_functions"

  // Send the storage bucket name and archive name to the cloud function module
  storage_bucket_name  = module.storage.storage_bucket_name
  storage_archive_name = module.storage.storage_archive_name  
}

// Import big query module
module "biq_query" {
  source = "./modules/big_query"
}