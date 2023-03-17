module "ansible-nodes" {
  source = "../../../../modules/compute/instance"
  machine_os = var.machine_os
  machine_type = var.machine-type.C3c4m8
  name = var.name
  ssh_public_key_path = var.ssh_public_key_path
  ssh_user = var.ssh_user
  disk_type = var.disk_type.ssd
  disk_size = var.disk_size
}
