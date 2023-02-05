resource "google_compute_network" "vpc_network" {
  name                    = var.name
  auto_create_subnetworks = var.auto_subnet
  mtu                     = 1460
  routing_mode = var.routing_mode
}