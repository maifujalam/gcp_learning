variable "region" {
  description = "Region Name"
  default     = "us-central1"
}
variable "zone" {
  description = "Zone Name"
  default     = "us-central-a"
}
variable "name" {
  default = "firewall-default"
}
variable "vpc" {
  description = "VPC Name"
}
variable "direction" {
  default = "Direction i.e INGRESS or EGRESS"
}
variable "ingress" {
  description = "infress rules in list"
}