module "subnet-1" {
  source = "../../../../modules/network/subnet"
  cidr = var.cidr
  name = var.name
  vpc = var.vpc
}