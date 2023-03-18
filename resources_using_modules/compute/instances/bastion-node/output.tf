output "private_ip" {
  value = zipmap(flatten(module.bastion-vm[*].names),flatten(module.bastion-vm[*].private-ips))
}
output "public_ip" {
  value = var.external_ip ? zipmap(flatten(module.bastion-vm[*].names),flatten(module.bastion-vm[*].public-ips)): null
}
output "ssh" {
  value= var.external_ip ? zipmap(flatten(module.bastion-vm[*].names),[ for i in flatten(module.bastion-vm[*].public-ips): "ssh -i ~/.ssh/gcp/gcp -o ServerAliveInterval=5 ${var.ssh_user}@${i}"]) : null
}
