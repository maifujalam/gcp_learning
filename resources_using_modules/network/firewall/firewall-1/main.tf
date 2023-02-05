module "firewall" {
  source = "/home/alam/PycharmProjects/terraform-learning/GCP/modules/network/firewall"
  name = var.name
  vpc    = var.vpc
  direction = var.direction
  ingress = var.ingress
}