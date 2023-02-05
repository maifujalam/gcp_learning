data "google_compute_image" "get_image" {
  family = lookup(var.machine_os_all,var.machine_os)["family"]
  project = lookup(var.machine_os_all,var.machine_os)["project"]
}