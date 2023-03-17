output "image-id" {
  value = data.google_compute_image.get_image.id
}
output "private-ips" {
  value = google_compute_instance.vm[*].network_interface[0].network_ip
}
output "public-ips" {
  value = google_compute_instance.vm[*].network_interface[0].access_config[0].nat_ip
}
output "ssh" {
  value = "ssh -i ~/.ssh/gcp/gcp -o ServerAliveInterval=5 ${var.ssh_user}@${google_compute_instance.vm[0].network_interface[0].access_config[0].nat_ip}"
  #value = "for k,v in ${google_compute_instance.vm}:k= "
}
