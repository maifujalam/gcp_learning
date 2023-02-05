provider "google" {
  region      = var.region
  zone        = var.zone
  project     = var.project
  credentials = "/home/alam/PycharmProjects/terraform-learning/GCP/service-accounts/admin.json"
}
