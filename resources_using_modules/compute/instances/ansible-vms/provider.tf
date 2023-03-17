provider "google" {
  region      = var.region
  zone        = var.zone
  project     = "alam-project1"
  credentials = "../../../../keys/alam-owner-sa.json"
}
