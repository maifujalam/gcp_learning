variable "region" {
  description = "Region Name"
  default     = "us-central1"
}
variable "zone" {
  description = "Zone Name"
  default     = "us-central-a"
}
variable "project" {
  default = ""
}
variable "name" {
  description = "Name of the bucket"
}
variable "bucket_name" {
  default = "bucket-default"
}
variable "force_destroy" {
  description = "true-> force destroy without bothering about bucket content. false-> does not delete bucket if have objects."
  default = true
}
#variable "uniform_access" {
#  description = "when set to true-> All bucket object have same access, false-> Granular object access"
#  default = true
#}
variable "location" {
  description = "The location of the bucket to create"
  default = "ASIA-SOUTH1"
}