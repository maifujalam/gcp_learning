resource "google_container_cluster" "gke-cluster" {
  name = var.name
  location = var.location
  initial_node_count = 1
  remove_default_node_pool = true
}