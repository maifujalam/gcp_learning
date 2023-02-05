data "google_compute_network" "get_vpc_a" {
  name = var.vpc_a
}
data "google_compute_network" "get_vpc_b" {
  name = var.vpc_b
}