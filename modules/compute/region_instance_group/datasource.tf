data "google_compute_instance_template" "get_instance_template" {
  project = var.project
  name = var.instance_template_name
}