variable "region" {
  description= "Region Name"
  default = "us-central1"
}
variable "zone" {
  description = "Zone Name"
  default = "us-central-a"
}
variable "machine-type" {
  description = "VM Machine type"
  type = map(any)
  default = {
    "c2m1" = "e2-micro"
    "c2m2" = "e2-small"
    "c2m4" = "e2-medium"
    "c2m8" = "e2-standard-2"
  }
}
variable "name" {
  default = "instance template name"
}
variable "disk_size" {
  default = "10"
}
variable "disk_type" {
  description = "Should be hdd or ssd"
  default = "ssd"
}
variable "machine_os" {
  default = ""
}
variable "vpc" {
  default = "default"
}
variable "subnetwork" {
  description = "Subnet of the vpc"
}
variable "ssh_public_key_path" {
  default = "~/.ssh/gcp/gcp.pub"
}
variable "ssh_user" {
  default = "alam"
}
