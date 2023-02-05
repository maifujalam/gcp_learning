resource "google_compute_firewall" "allow-ssh-from-iap" {
  name          = "allow-ssh-from-iap-${var.vpc}"
  network       = var.vpc
  project       = var.project
  source_ranges = [
    "35.235.240.0/20",
  ]
  allow {
    protocol = "tcp"
    ports    = ["22",]
  }

}