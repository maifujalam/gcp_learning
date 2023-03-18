output "image-id" {
  value = data.google_compute_image.get_image.id
}
output "private-ips" {
  value = flatten(google_compute_instance.vm[*].network_interface[*].network_ip)
}
output "public-ips" {
  value = var.external_ip? flatten(google_compute_instance.vm[*].network_interface[*].access_config[*].nat_ip) : null
}
#output "ssh" {
#  #value = length(google_compute_instance.vm[*])>0?  conct(var.ssh_user,(google_compute_instance.vm[*].network_interface[*].access_config[*].nat_ip)) : null
#  #value = "for k,v in ${google_compute_instance.vm}:k= "
#  value = length(google_compute_instance.vm[*])>0? "ssh -i ~/.ssh/gcp/gcp -o ServerAliveInterval=5 ${var.ssh_user}@${google_compute_instance.vm[0].network_interface[0].access_config[0].nat_ip}" : null
#
#}
output "names" {
  value = flatten(google_compute_instance.vm[*].name)
}
