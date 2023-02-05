variable "region" {
  description = "Region Name"
  default     = "us-central1"
}
variable "zone" {
  description = "Zone Name"
  default     = "us-central-a"
}
variable "machine_type" {
  description = "VM Machine type"
}
variable "name" {
   description = "Instance Template Name"
}
variable "machine_os_all" {
  type    = map(any)
  default = {
    rhel    = {
      family  = "rhel-8"
      project = "rhel-cloud"
    },
    cent-os = {
      family  = "centos-stream-8"
      project = "centos-cloud"
    },
    ubuntu  = {
      family  = "ubuntu-2204-lts"
      project = "ubuntu-os-cloud"
    }
  }
}
variable "disk_size" {
  default = "10"
}
variable "disk_type_all" {
  type    = map(any)
  default = {
    "hdd" = "pd-standard"
    "ssd" = "pd-ssd"
  }
}
variable "disk_type" {
  default = "ssd"
}
variable "vpc" {
  default = "default"
}
variable "machine_os" {
  description = "ss"
}
variable "ssh_public_key_path" {
  description = "path to the public key file"
}
variable "ssh_user" {
  description = "ssh user name"
}
