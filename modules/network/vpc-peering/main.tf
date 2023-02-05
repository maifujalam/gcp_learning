resource "google_compute_network_peering" "peering_a_b" {
  name         = "peering"
  network      = data.google_compute_network.get_vpc_a.id
  peer_network = data.google_compute_network.get_vpc_b.id
}

resource "google_compute_network_peering" "peering_b_a" {
  name         = "peering2"
  network      = data.google_compute_network.get_vpc_b.id
  peer_network = data.google_compute_network.get_vpc_a.id
}