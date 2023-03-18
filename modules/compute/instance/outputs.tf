output "image-id" {
  value = data.google_compute_image.get_image.id
}
output "private-ips" {
  value = flatten(google_compute_instance.vm[*].network_interface[*].network_ip)
}
output "public-ips" {
  value = var.external_ip? flatten(google_compute_instance.vm[*].network_interface[*].access_config[*].nat_ip) : null
}
output "names" {
  value = flatten(google_compute_instance.vm[*].name)
}
