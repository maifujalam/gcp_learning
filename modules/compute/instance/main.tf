resource "google_compute_address" "static-external-ip" {
  count = var.static_ip ? var.vm_count : 0
  name  = "static-external-ip-${count.index}"
}
resource "google_compute_address" "static-internal-ip" {
  count        = var.static_ip ? var.vm_count : 0
  name         = "static-internal-ip-${count.index}"
  address_type = "INTERNAL"
}
resource "google_compute_firewall" "allow-startup-script" {
  name    = "allow-startup-script"
  network = var.vpc
  allow {
    protocol = "tcp"
    ports = [80,443,8080]
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
  labels = var.labels
  metadata = {
    ssh-keys = "${var.ssh_user}:${file(var.ssh_public_key_path)}"
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
    network    = var.vpc
    access_config {
      network_tier = var.network_tier
      nat_ip       = var.static_ip ? google_compute_address.static-external-ip[count.index].address : null
    }
    network_ip = var.static_ip ? google_compute_address.static-internal-ip[count.index].address : null
  }
  allow_stopping_for_update = true
}