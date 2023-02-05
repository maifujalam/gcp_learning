variable "region" {
  description = "Region Name"
  default     = "us-central1"
}
variable "zone" {
  description = "Zone Name"
  default     = "us-central-a"
}
variable "project" {
  description = "Project Name"
}
#variable "zone" {
#  description = "Zone Name"
#}
variable "instance_template_name" {
  description = "Instance template name"
}

variable "base_instance_name" {
  description = "base instance name"
}
variable "name" {
  description = "Instance group name"
}