module "cloud-router" {
  source = "/home/alam/PycharmProjects/terraform-learning/GCP/modules/network/router"
  name = var.name
  vpc = var.vpc
}