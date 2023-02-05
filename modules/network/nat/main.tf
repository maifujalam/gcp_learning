resource "google_compute_router" "router" {
  name    = "router-${var.name}"
  network = data.google_compute_network.get_vpc.id
}
resource "google_compute_router_nat" "nat" {
  name                               = var.name
  nat_ip_allocate_option             = "AUTO_ONLY"
  router                             =  google_compute_router.router.name
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}
