module "bastion_instance_template" {
  source              = "../../../../modules/compute/instance_template"
  machine_os          = var.machine_os
  machine_type        = var.machine-type.c2m1
  name                = var.name
  ssh_user            = var.ssh_user
  ssh_public_key_path = var.ssh_public_key_path
  disk_type = var.disk_type
}