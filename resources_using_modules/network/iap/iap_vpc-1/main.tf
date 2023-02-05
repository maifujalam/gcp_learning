module "iap-firewall" {
  source = "/home/alam/PycharmProjects/terraform-learning/GCP/modules/network/identity-aware-proxy"
  project = var.project
  vpc = var.vpc
}