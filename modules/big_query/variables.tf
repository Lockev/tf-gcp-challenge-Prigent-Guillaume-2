variable "dataset_id" {
  type = string
  default = "tfgcpchallengepgdataset"
}

variable "friendly_name" {
  type = string
  default = "Terraform GCP Challenge"
}

variable "description" {
  type = string
  default = "This is a description for the dataset"
}

variable "location" {
  type = string
  default = "EU"
}

variable "table_id" {
  type = string
  default = "tf-gcp-challenge-pg-table"
}