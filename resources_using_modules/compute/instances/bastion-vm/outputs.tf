output "public_ip" {
  value = module.bastion-vm[*].public-ips
}
output "private_ip" {
  value = module.bastion-vm[*].private-ips
}
output "ssh" {
  value= module.bastion-vm[*].ssh
}
