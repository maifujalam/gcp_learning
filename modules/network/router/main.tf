resource "google_compute_router" "router" {
  name    = var.name
  network = data.google_compute_network.get_vpc.id
  region = var.region
}