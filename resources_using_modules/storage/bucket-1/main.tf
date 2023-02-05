module "bucket-1" {
  source = "/home/alam/PycharmProjects/terraform-learning/GCP/modules/storage/bucket"
  bucket_name = var.name
  project = var.project
  force_destroy = var.force_destroy
  location =var.location
}