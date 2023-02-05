provider "google" {
  region      = var.region
  zone        = var.zone
  project     = "logical-cubist-348810"
  credentials = "../../../../../service-accounts/admin.json"
}
