// https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_table

// Create dataset
resource "google_bigquery_dataset" "default" {
  dataset_id                  = var.dataset_id
  friendly_name               = var.friendly_name
  description                 = var.friendly_name
  location                    = var.location
  default_table_expiration_ms = 3600000
}

// create table
resource "google_bigquery_table" "default" {
  dataset_id = google_bigquery_dataset.default.dataset_id
  table_id   = var.table_id

  time_partitioning {
    type = "DAY"
  }

  schema = <<EOF
[
  {
    "name": "permalink",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "The Permalink"
  },
  {
    "name": "state",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "State where the head office is located"
  }
]
EOF
}