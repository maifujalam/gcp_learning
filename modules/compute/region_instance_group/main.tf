resource "google_compute_health_check" "autohealing" {
  name                = "autohealing-health-check"

  check_interval_sec  = 5
  timeout_sec         = 5
  healthy_threshold   = 2
  unhealthy_threshold = 10 # 15 seconds

  http_health_check {
    request_path = "/"
    port         = "80"
  }
}
resource "google_compute_region_instance_group_manager" "instance_group" {
  name = var.name
  base_instance_name = var.base_instance_name
  region = var.region
#  zone        = var.zone
  version {
    instance_template = data.google_compute_instance_template.get_instance_template.id
  }
  target_size = 2
  named_port {
    name = "custom-http"
    port = 80
  }
  auto_healing_policies {
    health_check      = google_compute_health_check.autohealing.id
    initial_delay_sec = 60
  }
}
