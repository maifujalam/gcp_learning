provider "google" {
  region      = var.region
  zone        = var.zone
  project     = "logical-cubist-348810"
  credentials = "/home/alam/PycharmProjects/terraform-learning/GCP/service-accounts/admin.json"
}
