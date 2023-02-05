variable "region" {
  description = "Region Name"
  default     = "us-central1"
}
variable "zone" {
  description = "Zone Name"
  default     = "us-central-a"
}
variable "name" {
  description = "VPC Name"
  default = "vpc-default"
}
variable "auto_subnet" {
  description = "Auto create subnet in all region"
  default = true
}
variable "routing_mode" {
  description = "how the routing will be configured"
  default = "REGIONAL"
}