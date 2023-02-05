module "vpc-1" {
  source = "../../../../modules/network/vpc"
  name = var.name
  auto_subnet = var.auto_subnet
  routing_mode = var.routing_mode
}