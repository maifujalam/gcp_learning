variable "region" {
  description = "Region Name"
  default     = "us-central1"
}
variable "zone" {
  description = "Zone Name"
  default     = "us-central-a"
}
variable "vpc" {
  description = "vpc name"
  default = "vpc-default"
}
variable "name" {
  default = "subnet-default"
}
variable "cidr" {
  default = "10.1.0.0/16"
}