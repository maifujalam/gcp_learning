output "private_ip" {
  value = flatten(module.bastion-vm[*].private-ips)
}
output "public_ip" {
  value = var.external_ip ? flatten(module.bastion-vm[*].public-ips): null
  #count = length(for i in length(module.bastion-vm[*].names))
  #value = var.external_ip ? [ for i in length(module.bastion-vm[*].names): module.bastion-vm[*].public-ips[count.index]] : null
}

output "ssh" {
  value= var.external_ip ?  [ for i in flatten(module.bastion-vm[*].public-ips): "ssh -i ~/.ssh/gcp/gcp -o ServerAliveInterval=5 ${var.ssh_user}@${i}"] : null
}
