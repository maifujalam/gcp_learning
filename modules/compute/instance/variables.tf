variable "region" {
  description = "Region Name"
  default     = "us-central1"
}
variable "zone" {
  description = "Zone Name"
  default     = "us-central-a"
}
variable "vm_count" {
  default = "1"
}
variable "machine_type" {
  description = "VM Machine type"
}
variable "name" {
  description = "Machine Name"
}
variable "machine_os_all" {
  type    = map(any)
  default = {
    rhel    = {
      family  = "rhel-9"
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
variable "disk_type" {
  default = "pd-ssd"
  description = "os disk type.This is either hdd or ssd"
}
variable "vpc" {
  default = "default"
}
variable "network_tier" {
  default = "PREMIUM"
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
variable "static_ip" {
  default = false
}
variable "labels" {
  description = "Map of key value pairs"
  type = map(any)
  default = {
    "default-key":"default-value"
  }
}
variable "private_vm" {
  description = "Specify whether this VM is privately accessed or not"
  default = true
}
