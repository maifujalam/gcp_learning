variable "project_id" {
  description = "Provide Project name"
  default = ""
}
variable "region" {
  description= "Region Name"
  default = "us-central1"
}
variable "zone" {
  description = "Zone Name"
  default = "us-central-a"
}
variable "vm_count" {
  default = "1"
}
variable "machine-type" {
  description = "VM Machine type"
  type = map(any)
  default = {
    "c1m1free" = "e2-micro"
    "c1m2" = "e2-small"
    "c2m4" = "e2-medium"
    "c2m8" = "e2-standard-2"
    "C3c4m8" = "c3-highcpu-4"
    "C3c8m16" = "c3-highcpu-8"
  }
}
variable "name" {
  default = "default-vm"
}
variable "disk_size" {
  default = "10"
}
variable "disk_type" {
  type    = map(any)
  default = {
    "hdd" = "pd-standard"
    "ssd" = "pd-ssd"
  }
}
variable "machine_os" {
  default = ""
}
variable "vpc" {
  default = "default"
}
variable "ssh_public_key_path" {
  default = "~/.ssh/gcp/gcp.pub"
}
variable "ssh_user" {
  default = "alam"
}
variable "static_ip" {
  default = true
}
variable "labels" {
  description = "Map of key value pairs"
  type = map(any)
  default = {
    "default-key":"default-value"
  }
}
variable "external_ip" {
  default = false
}
