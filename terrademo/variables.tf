variable "credentials" {
  description = "My Credentials"
  default     = "enter location"
}

variable "project" {
  description = "Project"
  default     = "terraform-demo-472408"
}

variable "region" {
  description = "Region"
  default     = "asia-south2"
}

variable "location" {
  description = "Project Location"
  default     = "ASIA-SOUTH2"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "terraform-demo-472408-terra-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}