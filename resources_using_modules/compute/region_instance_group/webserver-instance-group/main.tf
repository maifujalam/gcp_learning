module "webserver-instance-group" {
  source                 = "../../../../modules/compute/region_instance_group"
  base_instance_name     = var.base_instance_name
  instance_template_name = var.instance_template_name
  name                   = var.name
  project                = var.project
  region                 = var.region
}