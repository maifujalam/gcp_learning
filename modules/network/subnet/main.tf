resource "google_compute_subnetwork" "subnet" {
  name = var.name
  ip_cidr_range = var.cidr
  network = data.google_compute_network.get_vpc.id
}