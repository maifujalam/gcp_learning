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
resource "google_compute_instance_template" "instance_template" {
  name         = var.name
  machine_type = var.machine_type
  tags         = [
    "http-server",
    "https-server"
  ]
  metadata = {
    ssh-keys = "${var.ssh_user}:${file(var.ssh_public_key_path)}"
    startup-script = var.machine_os == "ubuntu" ? local.ubuntu_script : local.rhel_script
  }
  network_interface {
    network    = var.vpc
  }
  disk {
    source_image = data.google_compute_image.get_image.id
    boot = true
    auto_delete = true
    disk_size_gb = var.disk_size
#    disk_type = var.disk_type
    disk_type = lookup(var.disk_type_all,var.disk_type,"pd-ssd" )
  }
}