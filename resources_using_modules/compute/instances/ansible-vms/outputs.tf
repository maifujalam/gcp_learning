output "private_ip" {
  value = flatten(module.bastion-vm[*].private-ips)
}
output "public_ip" {
  #value = length(module.bastion-vm[*].public-ips) > 0 ? module.bastion-vm[*].public-ips : null
  value = var.external_ip ? flatten(module.bastion-vm[*].public-ips): null
}

output "ssh" {
  value= var.external_ip ?  [ for i in flatten(module.bastion-vm[*].public-ips): "ssh -i ~/.ssh/gcp/gcp -o ServerAliveInterval=5 ${var.ssh_user}@${i}"] : null
}
#output "ssh2" {
#  value= "ssh -i ~/.ssh/gcp/gcp -o ServerAliveInterval=5 alam@${(module.bastion-vm[0].private-ips)}"
#}
