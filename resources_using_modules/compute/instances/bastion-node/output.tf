output "private-ip" {
  value = module.ansible-nodes[*].private-ips[*]
}
output "public-ip" {
  value = module.ansible-nodes[*].public-ips[*]
}
output "ssh" {
  value = module.ansible-nodes[*].ssh[*]
}
