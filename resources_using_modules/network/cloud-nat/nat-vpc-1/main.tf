module "cloud-nat" {
  source = "/home/alam/PycharmProjects/terraform-learning/GCP/modules/network/nat"
  name   = var.name
  vpc    = var.vpc
}