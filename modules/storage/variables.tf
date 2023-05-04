variable "gcp_region" {
    type = string
    default = "europe-west1"
}

variable "gcp_zone" {
    type = string
    default = "europe-west1-c"
}

variable "project" {
    type = string
    default = "tf-gcp-challenge-prigent-g"
}

variable "bucket_location" {
  type    = string
  default = "EU"
}

variable "bucket_name" {
    type = string
    default = "tf-gcp-challenge-pg-bucket"
}

variable "storage_class" {
    type = string
    default = "STANDARD"
}