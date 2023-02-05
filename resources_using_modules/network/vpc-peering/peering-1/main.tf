module "vpc-peering" {
  source = "../../../../modules/network/vpc-peering"
  vpc_a = var.vpc_a
  vpc_b = var.vpc_b
}