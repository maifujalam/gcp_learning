resource "google_storage_bucket" "bucket" {
  name = format("%s_%s",var.bucket_name,var.project)
  force_destroy = var.force_destroy
  location = var.location
}
