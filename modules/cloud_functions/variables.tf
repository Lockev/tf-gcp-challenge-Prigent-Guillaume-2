variable "gcp_region" {
  type    = string
  default = "europe-west1"
}

variable "gcp_zone" {
  type    = string
  default = "europe-west1-b"
}

variable "project" {
  type    = string
  default = "tf-gcp-challenge-prigent-g"
}

variable "bucket_name" {
  type = string
  default = "tf-gcp-challenge-pg-bucket"
}

variable "entry_point" {
  type = string
  default = "helloHttp"
}

variable "cloud_function_name" {
  type = string
  default = "tf-gcp-challenge-pg-cloud-function"
}

variable "cloud_function_description" {
  type = string
  default = "This is a description for the cloud function"
}

variable "cloud_function_runtime" {
  type = string
  default = "nodejs16"
}

variable cloud_function_memory_mb {
  type = number
  default = 128
}

variable cloud_function_timeout_sec {
  type = number
  default = 60
}

variable storage_bucket_name {
  type = string
}

variable storage_archive_name {
  type = string
}
