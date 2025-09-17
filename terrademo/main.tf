terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "terraform-demo-472408"
  region  = "asia-south2"
}

resource "google_storage_bucket" "demo-datalake-bucket" {
  name          = "terraform-demo-472408-terra-bucket"
  location      = "ASIA-SOUTH2"

  storage_class = "STANDARD"
  uniform_bucket_level_access = true

  versioning {
    enabled     = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30  // days
    }
  }

  force_destroy = true
}
