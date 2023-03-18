module "bastion-vm" {
  source = "../../../../modules/compute/instance"
  vm_count = var.vm_count
  name         = var.name
  machine_type = var.machine-type.c1m1free
  machine_os = var.machine_os
  disk_size = var.disk_size
  disk_type = var.disk_type.ssd
  vpc = var.vpc
  ssh_user = var.ssh_user
  ssh_public_key_path = var.ssh_public_key_path
  external_ip = var.external_ip
  labels = var.labels
}
