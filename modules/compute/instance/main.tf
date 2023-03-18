resource "google_compute_address" "external-ip" {
  count = var.external_ip ? var.vm_count : 0
  name  = "${var.name}-external-ip-${count.index}"
}
resource "google_compute_address" "internal-ip" {
  count        = var.internal_ip ? var.vm_count : 0
  name         = "${var.name}-internal-ip-${count.index}"
  address_type = "INTERNAL"
}
resource "google_compute_firewall" "allow-startup-script" {
  name    = "${var.name}-allow-startup-script"
  network = var.vpc
  allow {
    protocol = "tcp"
    ports    = [80, 443, 8080]
  }
  source_ranges = ["0.0.0.0/0"]
}
locals {
  rhel_script = <<SCRIPT
      yum install -y httpd
      systemctl start httpd
      systemctl enable httpd
      echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
  SCRIPT

  ubuntu_script = <<SCRIPT
      apt update
      apt -y install apache2
      echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
      systemctl enable apache2
      systemctl restart apache2
  SCRIPT
}

resource "google_compute_instance" "vm" {
  count        = var.vm_count
  machine_type = var.machine_type
  name         = "${var.name}-${count.index}"
  tags         = [
    "http-server",
    "https-server"
  ]
  labels   = var.labels
  metadata = {
    ssh-keys       = "${var.ssh_user}:${file(var.ssh_public_key_path)}"
    startup-script = var.machine_os == "ubuntu" ? local.ubuntu_script : local.rhel_script
  }
  boot_disk {
    initialize_params {
      image = data.google_compute_image.get_image.id
      type  = var.disk_type
      size  = var.disk_size
    }
  }
  network_interface {
    network = var.vpc

    dynamic "access_config" {
      for_each = var.external_ip ? [" "] : []
      content {
          network_tier = var.network_tier
          nat_ip       = google_compute_address.external-ip[count.index].address
      }
    }
    network_ip = var.internal_ip ? google_compute_address.internal-ip[count.index].address : null
  }
  allow_stopping_for_update = true
}
