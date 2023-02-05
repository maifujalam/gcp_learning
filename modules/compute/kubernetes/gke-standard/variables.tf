variable "region" {
  description = "Region Name"
  default     = "us-central1"
}
variable "zone" {
  description = "Zone Name"
  default     = "us-central-a"
}
variable "name" {
  description = "GKE Cluster name"
  name = "gke-default"
}
variable "location" {
  default = "If its a HA Cluster pass region, else if its a single master then pass zone name."
}
