resource "google_compute_firewall" "firewall" {
  name          = var.name
  network       = var.vpc
  direction     = var.direction
  dynamic allow {
    for_each = var.ingress
    content {
      protocol = allow.value["protocol"]
      ports    = lookup(allow.value, "port", null)
    }
  }
  source_ranges = ["0.0.0.0/0"]
}